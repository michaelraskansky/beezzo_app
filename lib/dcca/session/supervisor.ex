defmodule Dcca.Session.Supervisor do
  use Supervisor.Behaviour

  # API Functions
  def start(origin_host) do
    :supervisor.start_child(:ocs_supervisor_peer, [origin_host])
  end

  def stop(origin_host) do
    [pid] = :gproc.lookup_pids {:n, :l, {:peer, list_to_atom(origin_host)}}
    :supervisor.terminate_child(:ocs_supervisor_peer, pid)
  end

  # Supervisor Callback
  def start_link(origin_host) do
    :supervisor.start_link(__MODULE__, [origin_host])
  end

  def init(opts) do
    [origin_host] = opts
    :gproc.reg { :n, :l, {:peer, list_to_atom(origin_host)} }, []

    userSpec = {:Dcca.Session.Worker, {:Dcca.Session.Worker, :start_link, []}, :temporary, 2000, :worker, [:Dcca.Session.Worker]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}

    {:ok, startSpecs}
  end

  #private functions
end
