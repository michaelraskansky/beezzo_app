Code.require_file "diameter_records.ex", "include"
Code.require_file "ro_rel6_records.ex", "include"

defmodule Dcca.App.Ro do

  def peer_up(_svcName, {peerRef, cap}, state) do                      
    IO.puts "#{__MODULE__}.peer_up()"
    origin_host = cap.origin_host |> elem(1) |> list_to_atom
    {:ok, session_supervisor} = Dcca.Session.Supervisor.start
    Dcca.Peer.ActivePeerDB.add_peer(origin_host, session_supervisor, cap)
    state                                                            
  end                                                                

  def peer_down(_svcName, {peerRef, _}, state) do                    
    IO.puts "#{__MODULE__}.peer_down"

    state                                                            
  end                                                                

  def handle_request({:diameter_packet, header, avps, msg, bin, errors, transport_data} ,_,state) do
    IO.puts "#{__MODULE__}.handle_request"

    case msg do
      {:CCR, _, _, _, _, _, _, 1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        msg
        |> start_session # This function will create the initial CCA with reserved units
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


  # Private functions
  defp start_session(ccr) do
    IO.puts "#{__MODULE__}.start_session"

    cca = create_cca_rec(ccr)
    session_supervisor = Dcca.Peer.ActivePeerDB.get_peer_session_supervisor(ccr."Origin-Host")

    IO.puts inspect ccr."Subscription-Id"
    case Dcca.Session.Worker.start_session({ session_supervisor, ccr."Session-Id", ccr."Subscription-Id" }) do
      {:ok, _} -> 
        cca."Result-Code" 2001

      {:error, _} -> 
        cca."Result-Code" 5003

    end
  end

  # Yet to be impleneted functions
  defp update_session(ccr), do: ccr
  defp terminate_session(ccr), do: ccr
  defp event_request(ccr), do: ccr

  defp start_policy(cca), do: cca

  defp create_cca_rec(ccr_init) do
    IO.puts "#{__MODULE__}.create_cca_rec(#{inspect ccr_init})"

    :CCA.new(
      "Session-Id": ccr_init."Session-Id", 
      "Origin-Host": Dcca.Configuration.Main.get_origin_host, 
      "Origin-Realm": Dcca.Configuration.Main.get_origin_realm, 
      "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id,
      "CC-Request-Type": ccr_init."CC-Request-Type",
      "CC-Request-Number": ccr_init."CC-Request-Number")
  end

  defp reply(cca), do: {:reply, cca}

end
