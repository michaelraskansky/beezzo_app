defmodule Dcca.Supervisor do
  use Supervisor.Behaviour

  def start_link(opts) do
    IO.puts "#{__MODULE__}.start_link"
    :supervisor.start_link(__MODULE__, [opts])
  end

  def init(opts) do
    IO.puts "#{__MODULE__}.init"
    children = [
      worker(Dcca.Peer.Supervisor, [opts]),
      worker(Dcca.Stack.Main, [opts])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
