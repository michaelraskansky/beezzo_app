defmodule Dcca.Supervisor do
  use Supervisor.Behaviour

  def start_link(opts) do
    :supervisor.start_link({:local, :ocs_supervisor_root}, __MODULE__, [opts])
  end

  def init(opts) do
    children = [
      supervisor(Dcca.Peer.Supervisor, [opts]),
      worker(Dcca.Stack.Main, [opts])
    ]
    supervise(children, strategy: :one_for_one)
  end
end
