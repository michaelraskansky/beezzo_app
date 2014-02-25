defmodule Dcca.Stack.Main do
  use GenServer.Behaviour
  def start_link(opts) do
    IO.puts "#{__MODULE__}.start_link(#{opts})"
    :gen_server.start_link({:local, :ocs_diameter_stack}, __MODULE__, [opts], [])
  end
  def init(_opts) do
    IO.puts "#{__MODULE__}.init"

    {transportOpts, stackOpts} = Dcca.Configuration.Main.get_opts
    #{pool_name, num_of_connections, host, username, password, bucket} = Dcca.Configuration.Main.db_opts

    :cberl.start_link(:db, 100, '10.1.1.115:8091', 'Accumulators', '', 'Accumulators')
    :diameter.start_service "ocs_stack", stackOpts
    :diameter.add_transport "ocs_stack", {:listen, transportOpts}
  end
end
