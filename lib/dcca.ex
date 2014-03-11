defmodule Dcca do
  use Application.Behaviour
  # Application Callbacks
  def start(_type, _args), do: Dcca.Supervisor.start_link([])
end
