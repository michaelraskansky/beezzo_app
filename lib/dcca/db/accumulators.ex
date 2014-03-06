defmodule Dcca.Db.Accumulators do
  """
  def accumulator_list_to_record_list({accumulators}) do
    lc accu inlist :proplists.get_keys(accumulators), do: :proplists.get_value(accu, accumulators) |> accumulator_to_record
  end
  """
  def get_accumulators(pool \\ :db, subscription) do
    case :cberl.get pool, atom_to_binary(subscription) do
      {_, _, data} ->
        data = data |> :jiffy.decode
        data = :ej.get {"Multiple-Services-Credit-Control"}, data
        {:ok, data}
      error = {_key, {:error, :key_enoent}} ->
        error
    end
  end
end
