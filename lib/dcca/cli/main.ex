defmodule CLI do

  def loop do
    :io.setopts [expand_fun: &expand(&1), binary: true, encoding: :unicode]

    spawn(fn -> io_get(self) end)

    receive do
     {:input, _ }->
      IO.puts "Ok"
      loop
    end

  end

  def expand(_) do
    {:yes, '', ['list', 'show', 'get']}
  end

  defp io_get(pid) do
    IO.puts "get"
    send pid, { :input, self, IO.gets("ocs> ") }
  end



















  def list_peers do
    match = {{:n, :l, {:peer, :_}},:_, :_}
    gaurd = []
    res = [:"$$"]
    :gproc.select([{match, gaurd, res}])
  end

  def list_sessions do
    match = {{:n, :l, {:session, :_}},:_, :_}
    gaurd = []
    res = [:"$$"]
    :gproc.select([{match, gaurd, res}]) |> Enum.take 50
  end
end
