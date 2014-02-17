defmodule Dcca.Peer.Supervisor do
  use Supervisor.Behaviour

  def start_link(_opts) do
    IO.puts "#{__MODULE__}.start_link"

    :supervisor.start_link({:local, :peer_supervisor}, __MODULE__, [])
  end

  def init(_opts) do
    IO.puts "#{__MODULE__}.init"

    userSpec = {:Dcca.Session.Supervisor, {:Dcca.Session.Supervisor, :start_link, []}, :temporary, 2000, :supervisor, [:Dcca.Session.Supervisor]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}
    {:ok, startSpecs}
  end

end
