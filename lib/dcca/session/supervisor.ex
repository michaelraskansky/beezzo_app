defmodule Dcca.Session.Supervisor do
  use Supervisor.Behaviour

  # API Functions
  def start(dia_caps) do
    IO.puts "#{__MODULE__}.start"

    :supervisor.start_child(:peer_super, [dia_caps])
  end

  def start_link(dia_caps) do
    IO.puts "#{__MODULE__}.start_link"

    :supervisor.start_link({:local, generate_peer_id(dia_caps)}, __MODULE__, [])
  end

  #Supervisor Callback
  def init(_opts) do
    IO.puts "#{__MODULE__}.init"

    userSpec = {:Dcca.Session.Worker, {:Dcca.Session.Worker, :start_link, []}, :temporary, 2000, :worker, [:Dcca.Session.Worker]}
    startSpecs = {{:simple_one_for_one, 0, 1}, [userSpec]}
    {:ok, startSpecs}
  end

  #private functions
  defp generate_peer_id(caps) do
    IO.puts "#{__MODULE__}.generate_peer_id"

    host = elem(caps.origin_host, 1)
    app_id = elem(caps.auth_application_id, 1) |> List.first
    binary_to_atom("#{app_id}@#{host}")
  end
end
