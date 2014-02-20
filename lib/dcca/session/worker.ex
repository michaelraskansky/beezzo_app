# TODO: Implement init fro crash or initial request behaviour, if from crash take from DB else from msg

defrecord Dcca.SessionRequest, supervisor: nil, worker: nil, origin: nil, subscription: nil, session: nil ,status: 2001, ccr: :CCR.new, cca: :CCA.new

defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

# API functions #####################################################################################################################################
  def initial(ccr) do

    # Create initial SessionRequest record.
    session_req = ccr |> create_session_request

    # Set SessionRequest supervisor field.
    session_req = session_req.origin |> Dcca.Peer.Ets.read |> session_req.supervisor

    # Start GenFSM
    {:ok, pid} = :supervisor.start_child(session_req.supervisor, [session_req.session])
  
    # Set SessionRequest worker field
    session_req = pid |> session_req.worker

    # Set SessionRequest cca field
    session_req = session_req |> create_cca |> session_req.cca

    # Send "initial" event to GenFSM this will return the quotas and TCC
    {_session_id, _tcc, multiple_services} = :gen_fsm.sync_send_event(session_req.worker, :initial)

    # Set cca field Multiple-Services field
    session_req = multiple_services |> session_req.cca."Multiple-Services-Credit-Control" |> session_req.cca 

    # Store user session in the Session ETS
    Dcca.Session.Ets.create(session_req.session, session_req)

    # return
    session_req
  end

  def update(ccr) do
    session_req = ccr |> get_session_req_from_ets_and_update
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
      session_id
        |> List.first
        |> Dcca.Session.Ets.delete
  end
####################################################################################################################################################

# FSM Callbacks ####################################################################################################################################
  def init(session_id) do
    :erlang.process_flag(:trap_exit, true)

    # Get Data From DB
    {:ok, :open, {session_id, get_tcc, get_quotas}}
  end

  def open(:initial, _from, session_state), do: {:reply, session_state, :open, session_state }

  def open(:update, _from, session_state) do
    {:reply, session_state, :open, session_state }
  end

  def open(:terminate, _from, session_state) do
    {:reply, session_state, :open, session_state }
  end
#####################################################################################################################################################

# Private Helper Functions ##########################################################################################################################
  defp get_session_req_from_ets_and_update(ccr) do
    session_req = Dcca.Session.Ets.read(ccr."Session-Id")
    session_req = ccr |> session_req.ccr
    session_req = session_req |> create_cca |> session_req.cca
    Dcca.Session.Ets.update(session_req.session, session_req)
    session_req
  end
  defp get_quotas do
    [:"Multiple-Services-Credit-Control".new(
      "Rating-Group": [1],
      "Validity-Time": [3600],
      "Result-Code": [2001],
      "Granted-Service-Unit": [
        :"Granted-Service-Unit".new("CC-Total-Octets": [52428800])
      ],
      "Service-Identifier": [1],
      "Used-Service-Unit": [:"Used-Service-Unit".new "CC-Input-Octets": [0], "CC-Output-Octets": [0], "CC-Total-Octets": [0]]
      )]
  end

  defp get_tcc, do: 3600
  defp get_imsi_subs_id(subs_id), do: lc(id inlist subs_id, id."Subscription-Id-Type"==1 , do: id."Subscription-Id-Data") |> List.first

  defp create_cca(session_req), do: create_cca(session_req.ccr, session_req.status) 
  def create_cca(ccr, status) do
    :CCA.new(
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
