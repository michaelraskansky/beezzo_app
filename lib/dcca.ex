defmodule Dcca do
  use Application.Behaviour

  def start(_type, _args) do
    Dcca.Supervisor.start_link([])
  end

end
