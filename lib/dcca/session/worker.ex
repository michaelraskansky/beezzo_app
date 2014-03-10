# TODO: Implement init fro crash or initial request behaviour, if from crash take from DB else from msg
defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour
  alias Dcca.Session.Quota
  alias Dcca.Db.Accumulators

# API functions #####################################################################################################################################
  def initial(ccr) do
    lookup({:peer, ccr}) 
      |> :supervisor.start_child([ccr]) 
      |> get_ok_pid 
      |> :gen_fsm.sync_send_event(:initial)
  end

  def update(ccr) do
    lookup({:session, ccr}) 
      |> :gen_fsm.sync_send_event({:update, ccr})
  end

  def terminate(ccr) do
    lookup({:session, ccr}) 
      |> :gen_fsm.sync_send_event({:terminate, ccr})
  end

  def start_link(opts) do
    :gen_fsm.start_link(__MODULE__, [opts], [])
  end
####################################################################################################################################################

# FSM Callbacks ####################################################################################################################################
  def init([ccr]) do
    :erlang.process_flag(:trap_exit, true)
    # Create initial SessionRequest record.
    session_req = create_session_request(self, ccr)

    # Get quotas from DB and evaulate
    case Accumulators.get_accumulators(session_req.subscription) do
      { _key, { :error, :key_enoent } } -> 
        session_req = session_req.status 4012
      {:ok, session_quotas} ->  
        session_req = session_req.status 2001
        session_req = session_quotas |> session_req.quotas
    end
    register(session_req.session)
    {:ok, :idle, session_req}
  end

  def idle(:initial, _from, session_req = SessionRequest[status: 4012]) do
    {:reply, session_req, :open, session_req }
  end

  def idle(:initial, _from, session_req = SessionRequest[status: 2001]) do
    case Quota.evaluate_quotas(session_req) do
      {:ok, session_req} ->
        {:reply, session_req, :open, session_req }
    end
  end

  def open({:update, ccr}, _from, session_req) do
    session_req = update_session_req_cca(session_req, ccr)
    case Quota.evaluate_quotas(session_req) do
      {:ok, session_req} ->
        session_req = session_req.status 2001
        {:reply, session_req, :open, session_req }
    end
  end

  def open({:terminate, ccr}, _from, session_req) do
    {:stop, :normal, update_session_req_cca(session_req, ccr), update_session_req_cca(session_req, ccr)}
  end

  def open(:tcc_expired, _session_req) do
  end

  def terminate(_reason, _fsm_state, session_req) do
    IO.puts "Terminating worker"
    Accumulators.set_accumulators(session_req)
  end
#####################################################################################################################################################

# Private Helper Functions ##########################################################################################################################

  defp update_session_req_cca(session_req, ccr) do
    session_req = session_req.ccr ccr
    session_req.cca(create_cca(ccr))
  end

  defp create_session_request(pid, msg) do
    SessionRequest.new(
      pid: pid,
      origin: list_to_atom(msg."Origin-Host"), 
      subscription: list_to_atom(get_imsi_subs_id(msg."Subscription-Id")), 
      session: list_to_atom(msg."Session-Id"), 
      ccr: msg, 
      cca: create_cca(msg))
  end

  defp get_imsi_subs_id(subs_id), do: lc(id inlist subs_id, id."Subscription-Id-Type"==1 , do: id."Subscription-Id-Data") |> List.first

  defp create_cca(ccr) do
    CCA.new(
      "Session-Id": ccr."Session-Id",
      "Origin-Host": Dcca.Configuration.Main.get_origin_host,
      "Origin-Realm": Dcca.Configuration.Main.get_origin_realm,
      "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id,
      "CC-Request-Type": ccr."CC-Request-Type",
      "CC-Request-Number": ccr."CC-Request-Number")
  end
  defp register(session), do: :gproc.reg({:n, :l, {:session, session}}, [])
  defp lookup({:session, ccr}), do: :gproc.lookup_pids({:n, :l, {:session, list_to_atom(ccr."Session-Id")}}) |> List.first
  defp lookup({:peer, ccr}), do: :gproc.lookup_pids({:n, :l, {:peer, list_to_atom(ccr."Origin-Host")}}) |> List.first
  defp get_ok_pid({:ok, pid}), do: pid
  defp get_ok_pid(error), do: IO.puts inspect error
######################################################################################################################################################
end
