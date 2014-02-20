defmodule CLI do

  def get_session(session_id), do: session_id |> Dcca.Session.Ets.read
  def get_peer(peer), do: peer |> Dcca.Peer.Ets.read

  def list_peers, do: traverse :gen_server.call(:ocs_ets_peers, :get_table_id)
  def list_sessions, do: traverse :gen_server.call(:ocs_ets_sessions, :get_table_id)

  defp traverse(table) do
    case first = :ets.first table do
      :"$end_of_table" -> 
        :ok
      _ ->
        traverse(table, first)
    end
  end
  defp traverse(_table, :"$end_of_table"), do: :ok
  defp traverse(table, prev) do
    IO.puts inspect prev 
    next = :ets.next table, prev
    traverse(table, next)
  end
end
