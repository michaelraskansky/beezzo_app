defmodule Dcca.Peer.Supervisor do
  use Supervisor.Behaviour

  def start_link(_opts) do
    :supervisor.start_link({:local, :ocs_supervisor_peer}, __MODULE__, [])
  end

  def init(_opts) do
    userSpec = {:Dcca.Session.Supervisor, {:Dcca.Session.Supervisor, :start_link, []}, :temporary, 2000, :supervisor, [:Dcca.Session.Supervisor]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}
    {:ok, startSpecs}
  end

end
