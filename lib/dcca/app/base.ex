Code.require_file "diameter_records.ex", "include"
Code.require_file "base_records.ex", "include"

defmodule Dcca.App.Base do
  def peer_up(_svcName, {peerRef, _}, state) do
    IO.puts "Peer is up: #{inspect peerRef}"
    state
  end
  def peer_down(_svcName, {peerRef, _}, state) do
    IO.puts "Peer is down: #{inspect peerRef}"
    state
  end
  def handle_request(req,_,state) do
    IO.puts inspect req
    state
  end
end
