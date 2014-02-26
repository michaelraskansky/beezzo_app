defmodule CLI do
  def list_sessions(peer \\ :"chacli-01") do
    pids = :gproc.lookup_pids({:n, :l, {:peer, peer}}) |> List.first |> :supervisor.which_children |> Enum.take 150
    lc tup inlist pids do
      {_,pid,_,_} = tup
      pid
    end
  end
end
