defmodule Dcca do
  use Application.Behaviour
  def start(_type, _args) do
    IO.puts "#{__MODULE__}.start"
    Dcca.Supervisor.start_link([])
  end
end
