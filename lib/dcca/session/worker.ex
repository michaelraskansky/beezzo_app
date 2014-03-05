# TODO: Implement init fro crash or initial request behaviour, if from crash take from DB else from msg

defrecord Dcca.SessionRequest, pid: nil, origin: nil, quotas: nil, subscription: nil, session: nil ,status: nil, ccr: nil, cca: nil

defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

# API functions #####################################################################################################################################
  def initial(ccr) do
    [supervisor_pid] = :gproc.lookup_pids {:n, :l, {:peer, list_to_atom(ccr."Origin-Host")}}
    {:ok, pid} = :supervisor.start_child(supervisor_pid, [ccr])
    :gen_fsm.sync_send_event(pid, :initial)
  end

  def update(ccr) do
    [worker_pid] = :gproc.lookup_pids {:n, :l, {:session, list_to_atom(ccr."Session-Id")}}
    :gen_fsm.sync_send_event(worker_pid, {:update, ccr})
  end

  def terminate(ccr) do
    [worker_pid] = :gproc.lookup_pids {:n, :l, {:session, list_to_atom(ccr."Session-Id")}}
    :gen_fsm.sync_send_event(worker_pid, :terminate)
  end

  def start_link(opts) do
    :gen_fsm.start_link(__MODULE__, [opts], [])
  end
####################################################################################################################################################

# FSM Callbacks ####################################################################################################################################
  def init([ccr]) do
    :erlang.process_flag(:trap_exit, true)

    # Create initial SessionRequest record.
    session_req = ccr |> create_session_request
    session_req = self |> session_req.pid
                  
    # Get quotas from DB and evaulate
    case Dcca.Db.Utils.get_accumulators(session_req.subscription) do
      
      { _key, { :error, :key_enoent } } -> 
        session_req = update_session_req_result(session_req, 4012)

      {:ok, quotas} ->  
        session_req = update_session_req_result(session_req, 2001)
        session_req = quotas |> session_req.quotas
        
        # register user proccess
        :gproc.reg {:n, :l, {:session, list_to_atom(ccr."Session-Id")}}, []
    end

    {:ok, :idle, session_req}
  end
  def idle(:initial, _from, session_req) do
    case Dcca.Session.Quota.evaluate_quotas(session_req.ccr."Multiple-Services-Credit-Control", session_req.quotas) do

      {:ok, :nothing_requested} ->
        {:reply, session_req, :open, session_req }

      {multiple_services_reply, updated_quotas} ->
        session_req = session_req.cca(session_req.cca."Multiple-Services-Credit-Control"(multiple_services_reply))
        session_req = session_req.quotas updated_quotas

    end
  end

  def open({:update, ccr}, _from, session_req) do

    session_req = update_session_req_cca(session_req, ccr)

    {multiple_services_reply, updated_quotas} = Dcca.Session.Quota.evaluate_quotas(session_req.ccr."Multiple-Services-Credit-Control", session_req.quotas)
    IO.puts inspect multiple_services_reply

    session_req = session_req.cca(session_req.cca."Multiple-Services-Credit-Control"(multiple_services_reply))
    session_req = session_req.quotas updated_quotas

    session_req = update_session_req_result(session_req, 2001)

    {:reply, session_req, :open, session_req }
  end

  def open(:terminate, _from, session_req) do
    {:reply, session_req, :open, session_req }
  end

  def open(:tcc_expired, session_req) do
  end

  def terminate(_reason, _fsm_state, session_req) do
    IO.puts inspect session_req.quotas
  end
#####################################################################################################################################################

# Private Helper Functions ##########################################################################################################################

  defp update_session_req_cca(session_req, ccr) do
    session_req = session_req.ccr ccr
    session_req.cca(create_cca(ccr))
  end

  defp update_session_req_result(session_req, code) do
    code |> session_req.cca."Result-Code" |> session_req.cca
  end

  def create_session_request(msg) do
    Dcca.SessionRequest.new(
      origin: list_to_atom(msg."Origin-Host"), 
      subscription: list_to_atom(get_imsi_subs_id(msg."Subscription-Id")), 
      session: list_to_atom(msg."Session-Id"), 
      ccr: msg, 
      cca: create_cca(msg))
  end

  defp get_imsi_subs_id(subs_id), do: lc(id inlist subs_id, id."Subscription-Id-Type"==1 , do: id."Subscription-Id-Data") |> List.first

  def create_cca(ccr) do
    CCA.new(
      "Session-Id": ccr."Session-Id",
      "Origin-Host": Dcca.Configuration.Main.get_origin_host,
      "Origin-Realm": Dcca.Configuration.Main.get_origin_realm,
      "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id,
      "CC-Request-Type": ccr."CC-Request-Type",
      "CC-Request-Number": ccr."CC-Request-Number")
  end
######################################################################################################################################################
end
