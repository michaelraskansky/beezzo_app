defmodule Dcca.CLI do
  def list_peers do
    Dcca.Peer.ActivePeerDB.list
  end
  def list_sessions(peer) do
    :supervisor.which_children :gen_server.call(:peer_db, {:get_supervisor, peer})
  end
end
