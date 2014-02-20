Code.require_file "diameter_records.ex", "include"
Code.require_file "ro_rel6_records.ex", "include"

defmodule Dcca.App.Ro do
  alias Dcca.Session.Worker, as: SessionWorker

# diameter_app Callbacks ###############################################################################################################
  # this method should add a peer session supervisor and record the peer supervisor and peer id in 
  # the active peer db
  def peer_up(_svcName, {_peerRef, cap}, _state) do                      
    IO.puts "#{__MODULE__}.peer_up"
    
    #Start a session supervisor for the peer and add the peer + supervisor to the Peer ETS
    {_, origin_host} = cap.origin_host
    {_, pid} = Dcca.Session.Supervisor.start
    Dcca.Peer.Ets.create(list_to_atom(origin_host) , pid)

  end                                                                

  # This is the callback method for when a peer goes down,
  # We should stop the session supervisor for the peer(delete all sessions) and finally remove the refrence
  # From the active peer db.
  def peer_down(_svcName, {_peerRef, cap}, _state) do                    
    IO.puts "#{__MODULE__}.peer_down"

    {_, origin_host} = cap.origin_host
    origin_host
      |> Dcca.Peer.Ets.read
      |> Dcca.Session.Supervisor.stop
      Dcca.Peer.Ets.delete list_to_atom(origin_host)
  end                                                                

  # This method is the callback to handle CCR request.
  # The case pattern mathched the request type and send it to the correct flow for the message
  def handle_request({:diameter_packet, _header, _avps, msg, _bin, _errors, _transport_data} ,_,_state) do

    case msg do
      {:CCR, _, _, _, _, _, _, 1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        msg
          |> SessionWorker.initial   # Once the Session FSM has been initilized and register we pass the init
          |> start_policy            # This function will start the policy yet to be implemented to manipulate AVPs and authorize
          |> reply                   # This function will send the reply bach to diameter stack 

      {:CCR, _, _, _, _, _, _, 2, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        msg
          |> SessionWorker.update
          |> start_policy
          |> reply

      {:CCR, _, _, _, _, _, _, 3, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        msg 
          |> SessionWorker.terminate
          |> start_policy
          |> reply

      {:CCR, _, _, _, _, _, _, 4, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        SessionWorker.event(msg)
          |> reply

      _ -> :bad_packet
    end

  end                             
######################################################################################################################################

### Private functions ################################################################################################################

  defp start_policy(cca), do: cca

  defp reply(session_req) do 

  #cca = session_req.cca
    {:reply, session_req.cca}
  end

######################################################################################################################################
end
