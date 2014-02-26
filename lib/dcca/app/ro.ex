Code.require_file "diameter_records.ex", "include"
Code.require_file "ro_rel6_records.ex", "include"

defmodule Dcca.App.Ro do
  alias Dcca.Session.Worker, as: SessionWorker

# diameter_app Callbacks ###############################################################################################################
  # this method should add a peer session supervisor and record the peer supervisor and peer id in 
  # the active peer db
  def peer_up(_svcName, {_peerRef, cap}, _state) do                      

    #Start a session supervisor for the peer and add the peer + supervisor to the Peer ETS
    {_, origin_host} = cap.origin_host
    {_, pid} = Dcca.Session.Supervisor.start(origin_host)

  end                                                                

  # This is the callback method for when a peer goes down,
  # We should stop the session supervisor for the peer(delete all sessions) and finally remove the refrence
  # From the active peer db.
  def peer_down(_svcName, {_peerRef, cap}, _state) do                    
    {_, origin_host} = cap.origin_host
    Dcca.Session.Supervisor.stop(origin_host)
  end                                                                

  # This method is the callback to handle CCR request.
  # The case pattern mathched the request type and send it to the correct flow for the message
  def handle_request({:diameter_packet, _header, _avps, msg, _bin, _errors, _transport_data} ,_,_state) do
    msg = RecordHelpers.rec_converter(msg)

    #try do
      case msg do

        CCR["CC-Request-Type": 1] ->
          msg
            |> SessionWorker.initial   # Once the Session FSM has been initilized and register we pass the init
            |> start_policy            # This function will start the policy yet to be implemented to manipulate AVPs and authorize
            |> reply                   # This function will send the reply bach to diameter stack 

        CCR["CC-Request-Type": 2] ->
          msg
            |> SessionWorker.update
            |> start_policy
            |> reply

        CCR["CC-Request-Type": 3] -> 
          msg 
            |> SessionWorker.terminate
            |> start_policy
            |> reply

        CCR["CC-Request-Type": 4] ->
          msg
            |> SessionWorker.event
            |> reply
      end
    # catch e, r  ->
      #    IO.puts "#{__MODULE__}.handle_request exception! #{e} #{r}"
      #  msg
      #    |> create_error_response
      #    |> reply
      #  end
  end                             
######################################################################################################################################

### Private functions ################################################################################################################

  defp start_policy(cca), do: cca
  defp reply(session_req), do: {:reply, session_req.cca |> RecordHelpers.rec_converter}
  defp create_error_response(msg) do 
    Dcca.SessionRequest.new(cca: msg |> Dcca.Session.Worker.create_cca(5012))
  end

######################################################################################################################################
end
