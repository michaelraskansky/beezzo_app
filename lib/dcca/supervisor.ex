defmodule Dcca.Supervisor do
  use Supervisor.Behaviour

  def start_link(opts) do
    :supervisor.start_link(__MODULE__, [opts])
  end

  def init(opts) do
    children = [
      worker(Dcca.Stack, [opts])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
