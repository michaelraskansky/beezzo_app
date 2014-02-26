# TODO: Implement init fro crash or initial request behaviour, if from crash take from DB else from msg

defrecord Dcca.SessionRequest, pid: nil, origin: nil, quotas: nil, subscription: nil, session: nil ,status: nil, ccr: nil, cca: nil

defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

# API functions #####################################################################################################################################
  def initial(ccr) do
    {:ok, pid} = ccr."Origin-Host" |> Dcca.Peer.Ets.read |> :supervisor.start_child([ccr])
    :gen_fsm.sync_send_event(pid, :initial)
  end

  def update(ccr) do
    session_req = update_ets(ccr)
    :gen_fsm.sync_send_event(session_req.pid, :update)
  end

  def terminate(ccr) do
    session_req = update_ets(ccr)
    :gen_fsm.sync_send_event(session_req.pid, :terminate)
  end
####################################################################################################################################################

# Supervisor Callbacks #############################################################################################################################
  def start_link(opts) do
    :gen_fsm.start_link(__MODULE__, [opts], [])
  end

  def terminate(_reason, _fsm_state, session_req) do
      session_req.session |> Dcca.Session.Ets.delete
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
        session_req = 4012 |> session_req.cca."Result-Code" |> session_req.cca

      {:ok, quotas} ->  
        session_req = 2001 |> session_req.cca."Result-Code" |> session_req.cca
        session_req = quotas |> session_req.quotas
        session_req = session_req.quotas
                      |> Dcca.Db.Utils.accumulator_list_to_record_list
                      |> session_req.cca."Multiple-Services-Credit-Control"
                      |> session_req.cca

        # create user session in the Session ETS move to gproc
        Dcca.Session.Ets.create(session_req.session, session_req)
    end

    {:ok, :open, session_req}

  end

  def open(:initial, _from, session_req) do 

    multiple_services = session_req.ccr."Multiple-Services-Credit-Control"
    # add check if multiple services empty logic and etc.
    # need to compute what services to allow base on quotas and multiple services
    {:reply,session_req, :open, session_req }
  end

  def open(:update, _from, session_req) do
    multiple_services = session_req.ccr."Multiple-Services-Credit-Control"

    {:reply, session_req, :open, session_req }

  end

  def open(:terminate, _from, session_req) do
    {:reply, session_req, :open, session_req }
  end
#####################################################################################################################################################

# Private Helper Functions ##########################################################################################################################
  
  defp update_quotas(new, old) do
    IO.puts inspect "Updating Quotas"
    :ok
  end

  defp update_ets(ccr) do

    session_req = Dcca.Session.Ets.read(ccr."Session-Id")
    session_req = ccr 
                  |> session_req.ccr
    session_req = session_req.ccr
                  |> create_cca 
                  |> session_req.cca
    Dcca.Session.Ets.update(session_req.session, session_req)
    session_req
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
