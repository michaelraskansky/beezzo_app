Code.require_file "diameter_records.ex", "include"
Code.require_file "ro_rel6_records.ex", "include"

defmodule Dcca.App.Ro do

  def peer_up(_svcName, {peerRef, cap}, state) do                      
    IO.puts "#{__MODULE__}.peer_up"

    Dcca.Session.Supervisor.start(cap)
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
        start_session(msg)

      {:CCR, _, _, _, _, _, _, 2, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        update_session(msg)

      {:CCR, _, _, _, _, _, _, 3, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        terminate_session(msg)

      {:CCR, _, _, _, _, _, _, 4, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
        event_request(msg)
    end

  end                             


  #private functions
  defp start_session(ccr_init) do
    IO.puts "#{__MODULE__}.start_session"

    peer_id = binary_to_atom "#{ccr_init."Auth-Application-Id"}@#{ccr_init."Origin-Host"}"
    Dcca.Session.Worker.start peer_id, ccr_init
    construct_reply(ccr_init, 2001)
  end
  defp update_session(msg) do
    
  end
  defp terminate_session(msg) do

  end
  defp event_request(msg) do
  end
  defp construct_reply(msg, res_code) do
    {
      :reply, 
        :CCA.new(
          "Session-Id": msg."Session-Id", 
          "Origin-Host": Dcca.Configuration.Main.get_origin_host,
          "Origin-Realm": Dcca.Configuration.Main.get_origin_realm, 
          "Auth-Application-Id": Dcca.Configuration.Main.get_auth_app_id, 
          "CC-Request-Type": msg."CC-Request-Type", 
          "CC-Request-Number": msg."CC-Request-Number", 
          "Result-Code": res_code)
    }
  end
end
