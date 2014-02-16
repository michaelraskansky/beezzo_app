defmodule Dcca.CLI do
  def list_peers do
    IO.puts inspect :supervisor.which_children :peer_super
  end
  def list_sessions(peer) do
    IO.puts inspect :supervisor.which_children peer
  end
end
