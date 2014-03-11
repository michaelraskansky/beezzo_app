defmodule CLI do
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
