defmodule Dcca.Session.Worker do

  # API functions

  def start(session_super, ccr_init) do
    IO.puts "#{__MODULE__}.start"

    :supervisor.start_child(session_super, [ccr_init])
  end

  def start_link(ccr_init) do
    IO.puts "#{__MODULE__}.start_link"

    :gen_fsm.start_link({:local, create_local_session_id(ccr_init)}, __MODULE__, [ccr_init], [])
  end

  # GenFSM Callbacks

  def init(session_state) do
    IO.puts "#{__MODULE__}.init"

    {:ok, :open, session_state}
  end

  # Private Functions
  defp create_local_session_id(ccr_init) do
    IO.puts "#{__MODULE__}.create_local_session_id"

    binary_to_atom "#{ccr_init."Session-Id"}"
  end

  defp get_local_session_sup(ccr_init) do
    IO.puts "#{__MODULE__}.get_local_session_sup"

    binary_to_atom "#{ccr_init."Auth-Application-Id"}@#{ccr_init."Origin-Host"}"
  end
end
