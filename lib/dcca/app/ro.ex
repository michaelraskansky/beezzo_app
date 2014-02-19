Code.require_file "diameter_records.ex", "include"
Code.require_file "ro_rel6_records.ex", "include"

defmodule Dcca.App.Ro do
  alias Dcca.Peer.ActivePeerDB, as: ActivePeerDB

  # this method should add a peer session supervisor and record the peer supervisor and peer id in 
  # the active peer db
  def peer_up(_svcName, {_peerRef, cap}, state) do                      
    IO.puts "#{__MODULE__}.peer_up(#{inspect cap})"
    
    #Start a session supervisor for the peer and add the peer + supervisor to the ActivePeerDB
    Dcca.Session.Supervisor.start
      |> ActivePeerDB.add(cap)

  end                                                                

  # This is the callback method for when a peer goes down,
  # We should stop the session supervisor for the peer(delete all sessions) and finally remove the refrence
  # From the active peer db.
  def peer_down(_svcName, {_peerRef, cap}, state) do                    
    IO.puts "#{__MODULE__}.peer_down"
    {_, origin_host} = cap.origin_host

  end                                                                

  # This method is the callback to handle CCR request.
  # The case pattern mathched the request type and send it to the correct flow for the message
  def handle_request({:diameter_packet, _header, _avps, msg, _bin, _errors, _transport_data} ,_,_state) do
    IO.puts "#{__MODULE__}.handle_request"

    case msg do
      {:CCR, _, _, _, _, _, _, 1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        msg
        |> start_session # This function will create the initial CCA with the reserved units + start the TCC timer
        |> start_policy  # This function will start the policy yet to be implemented to manipulate AVPs and authorize
        |> reply         # This function will send the reply bach to diameter stack 

      {:CCR, _, _, _, _, _, _, 2, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        update_session(msg)

      {:CCR, _, _, _, _, _, _, 3, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        terminate_session(msg)

      {:CCR, _, _, _, _, _, _, 4, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        event_request(msg)
    end

  end                             


### Private functions #####################################################################################################

  defp start_session(ccr) do
    IO.puts "#{__MODULE__}.start_session"

    # Get the relevent session supervisor for the session
    # Attempt to add the session and save the result for analasys
    # This is basically a GenFSM proccess for handaling the sessions life time
    # After we get the pid we will also have to add a refrence in the active session DB
    { ccr."Origin-Host", ccr."Session-Id", ccr."Subscription-Id" |> get_imsi_subs_id }
      |> ActivePeerDB.get
      |> Dcca.Session.Worker.start_session_fsm
      |> create_cca(ccr)
  end

  defp create_cca(res, ccr) do
    IO.puts "#{__MODULE__}.create_cca(#{inspect res})"

    # Analyse the res and add the result code.
    # This is very basic error managment, the res from Dcca.Session.Worker.start_session will have to be more specific and then we can 
    # add more error codes
    case res do
      {:ok, _} -> # we have succeeded to add a session add 2001
        create_cca_rec(ccr, 2001)

      {:error, _} -> # something went wrong add 5003
        create_cca_rec(ccr, 5003)
    end
  end

  defp create_cca_rec(ccr, res_code) do
    IO.puts "#{__MODULE__}.create_cca_rec(#{inspect ccr})"
    :CCA.new(
      "Result-Code": res_code,
      "Session-Id": ccr."Session-Id", 
      "Origin-Host": Dcca.Configuration.Main.get_origin_host, 
      "Origin-Realm": Dcca.Configuration.Main.get_origin_realm, 
      "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id,
      "CC-Request-Type": ccr."CC-Request-Type",
      "CC-Request-Number": ccr."CC-Request-Number")
  end

  # Yet to be impleneted functions, this functions are meant to intearct with a sessions GenFSM based on the
  # CCR Type
  defp update_session(ccr), do: ccr
  defp terminate_session(ccr), do: ccr
  defp event_request(ccr), do: ccr
  defp start_policy(cca), do: cca

  # Private Helper Functions
  defp reply(cca), do: {:reply, cca}
  defp get_imsi_subs_id([head|tail]), do: if(head."Subscription-Id-Type" == 1, do: head."Subscription-Id-Data", else: get_imsi_subs_id(tail))
  defp get_imsi_subs_id([]), do: :error

#############################################################################################################################
end
