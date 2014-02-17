defmodule Dcca.CLI do
  def list_peers do
    Dcca.Peer.ActivePeerDB.list_peers
  end
  def list_sessions(peer) do
    IO.puts inspect :supervisor.which_children binary_to_atom(peer)
  end
end
