defmodule Dcca.App.Base do
  def peer_up(_svcName, {peerRef, _}, state) do
    state
  end
  def peer_down(_svcName, {peerRef, _}, state) do
    state
  end
  def handle_request(req,_,state) do
    state
  end
end
