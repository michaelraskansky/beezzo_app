# TODO: Implement init fro crash or initial request behaviour, if from crash take from DB else from msg

defrecord Dcca.SessionRequest, supervisor: nil, worker: nil, origin: nil, subscription: nil, session: nil ,status: 2001, ccr: CCR.new, cca: CCA.new

defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

# API functions #####################################################################################################################################
  def initial(ccr) do

    # Create initial SessionRequest record.
    session_req = ccr 
                  |> create_session_request

    # Set SessionRequest supervisor field.
    session_req = session_req.origin 
                  |> Dcca.Peer.Ets.read 
                  |> session_req.supervisor

    # Get quotas from DB and evaulate
    case Dcca.Db.Utils.get_accumulators(session_req.subscription) do

      # No quotas are avaliable generate cca and return
      {_key, {:error, :key_enoent}} -> 

        4012
        |> session_req.status # Set SessionRequest status to 4012
        |> create_and_set_cca # Create CCA 

      # got quotas from DB continue evaluation
      {:ok, quotas} ->  

        # Start GenFSM pass the quotas from DB and session identifier
        {:ok, pid} = :supervisor.start_child(session_req.supervisor, [{session_req.session, quotas}])
  
        # Set SessionRequest worker field
        session_req = pid 
                      |> session_req.worker   # Set worker field
                      |> create_and_set_cca   # Create CCA from SessionRequest

        # create user session in the Session ETS
        Dcca.Session.Ets.create(session_req.session, session_req)

        # Send "initial" event to GenFSM this will return the quotas and TCC
        # Set cca field Multiple-Services field
        session_req = :gen_fsm.sync_send_event(session_req.worker, :initial)
                      |> Dcca.Db.Utils.accumulator_list_to_record_list 
                      |> session_req.cca."Multiple-Services-Credit-Control" 
                      |> session_req.cca 

        # update user session in the Session ETS
        Dcca.Session.Ets.update(session_req.session, session_req)

        # return
        session_req
    end
  end

  def update(ccr) do
    session_req = ccr 
                  |> update_ets

    :gen_fsm.sync_send_event(session_req.worker, :update)
    session_req
  end

  def terminate(ccr) do
    session_req = Dcca.Session.Ets.read(ccr."Session-Id")
    session_req = ccr |> session_req.ccr
    session_req = session_req |> create_cca |> session_req.cca
    Dcca.Session.Ets.update(session_req.session, session_req)

    :gen_fsm.sync_send_event(session_req.worker, :terminate)
    session_req
  end
####################################################################################################################################################

# Supervisor Callbacks #############################################################################################################################
  def start_link(opts) do
    :gen_fsm.start_link(__MODULE__, [opts], [])
  end

  def terminate(_reason, _fsm_state, {session_id, _tcc, _quotas}) do
      session_id |> Dcca.Session.Ets.delete
  end
####################################################################################################################################################

# FSM Callbacks ####################################################################################################################################
  def init([{session_id, quotas}]) do
    # most of the things done in intitial should be move here.
    # initial function should start the child and send it the initial request.
    # I think this is cleaner and more intuative
    # plus we can easily add more information to the state
    :erlang.process_flag(:trap_exit, true)


    {:ok, :open, {session_id, get_tcc, quotas}}
  end

  def open(:initial, _from, session_state = {session_id, tcc, quotas}) do 
    session_req = Dcca.Session.Ets.read(session_id)
    multiple_services = session_req.ccr."Multiple-Services-Credit-Control"
    # add check if multiple services empty logic and etc.
    # need to compute what services to allow base on quotas and multiple services
    {:reply, quotas, :open, session_state }
  end

  def open(:update, _from, {session_id, tcc, quotas}) do
    session_req = Dcca.Session.Ets.read(session_id)
    multiple_services = session_req.ccr."Multiple-Services-Credit-Control"
    updated_quotas = update_quotas(multiple_services, quotas)

    {:reply, updated_quotas, :open, {session_id, tcc, updated_quotas} }

  end

  def open(:terminate, _from, session_state) do
    {:reply, session_state, :open, session_state }
  end
#####################################################################################################################################################

# Private Helper Functions ##########################################################################################################################
  defp create_and_set_cca(session_request), do: session_request |> create_cca |> session_request.cca
  
  defp update_quotas(new, old) do
    IO.puts inspect "Updating Quotas"
    :ok
  end
  defp update_ets(ccr) do

    session_req = Dcca.Session.Ets.read(ccr."Session-Id")

    session_req = ccr 
                  |> session_req.ccr

    session_req = session_req 
                  |> create_cca 
                  |> session_req.cca

    Dcca.Session.Ets.update(session_req.session, session_req)

    session_req
  end

  defp get_tcc, do: 3600
  defp get_imsi_subs_id(subs_id), do: lc(id inlist subs_id, id."Subscription-Id-Type"==1 , do: id."Subscription-Id-Data") |> List.first

  def create_cca(session_req), do: create_cca(session_req.ccr, session_req.status) 
  def create_cca(ccr, status) do
    CCA.new(
      "Result-Code": status,
      "Session-Id": ccr."Session-Id",
      "Origin-Host": Dcca.Configuration.Main.get_origin_host,
      "Origin-Realm": Dcca.Configuration.Main.get_origin_realm,
      "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id,
      "CC-Request-Type": ccr."CC-Request-Type",
      "CC-Request-Number": ccr."CC-Request-Number")
  end
  def create_session_request(msg) do
    Dcca.SessionRequest.new(origin: list_to_atom(msg."Origin-Host"), subscription: list_to_atom(get_imsi_subs_id(msg."Subscription-Id")), session: list_to_atom(msg."Session-Id"), ccr: msg )
  end
######################################################################################################################################################
end
