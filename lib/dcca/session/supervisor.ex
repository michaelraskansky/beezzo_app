defmodule Dcca.Session.Supervisor do
  use Supervisor.Behaviour

  # API Functions
  def start do
    IO.puts "#{__MODULE__}.start"

    :supervisor.start_child(:peer_supervisor, [])
  end

  # Supervisor Callback
  def start_link do
    IO.puts "#{__MODULE__}.start_link"

    :supervisor.start_link(__MODULE__, [])
  end

  def init(_opts) do
    IO.puts "#{__MODULE__}.init"

    userSpec = {:Dcca.Session.Worker, {:Dcca.Session.Worker, :start_link, []}, :temporary, 2000, :worker, [:Dcca.Session.Worker]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}

    {:ok, startSpecs}
  end

  #private functions
end
