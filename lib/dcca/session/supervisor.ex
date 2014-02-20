defmodule Dcca.Session.Supervisor do
  use Supervisor.Behaviour

  # API Functions
  def start do
    :supervisor.start_child(:ocs_supervisor_peer, [])
  end

  def stop(pid) do
    :supervisor.terminate_child(:ocs_supervisor_peer, pid)
  end

  # Supervisor Callback
  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end

  def init(_opts) do
    userSpec = {:Dcca.Session.Worker, {:Dcca.Session.Worker, :start_link, []}, :temporary, 2000, :worker, [:Dcca.Session.Worker]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}

    {:ok, startSpecs}
  end

  #private functions
end
