defmodule Dcca.Stack.Main do
  use GenServer.Behaviour
  def start_link(opts) do
    IO.puts "#{__MODULE__}.start_link(#{opts})"
    :gen_server.start_link({:local, :ocs_diameter_stack}, __MODULE__, [opts], [])
  end
  def init(_opts) do
    IO.puts "#{__MODULE__}.init"

    {transportOpts, stackOpts} = Dcca.Configuration.Main.get_opts
    :diameter.start_service "ocs_stack", stackOpts
    :diameter.add_transport "ocs_stack", {:listen, transportOpts}
  end
end
