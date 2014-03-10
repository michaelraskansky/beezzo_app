defmodule Dcca do
  use Application.Behaviour
  def main(argv) do
    start(:type, argv) 
  end
  def start(_type, _args), do: Dcca.Supervisor.start_link([])
end
