defmodule Dcca.Db.Utils do
  def accumulator_list_to_record_list(accumulators) do
    lc accu inlist :proplists.get_keys(accumulators), do: :proplists.get_value(accu, accumulators) |> accumulator_to_record
  end
  def get_accumulators(pool \\ :db, subscription) do
    case :cberl.get pool, atom_to_binary(subscription) do
      {_, _, data} ->
        data = data |> :jiffy.decode
        {data} = :ej.get {"Multiple-Services-Credit-Control"}, data
        {:ok, data}
      error = {_key, {:error, :key_enoent}} ->
        error
    end
  end
  def accumulator_to_record(accumulator) do
    :"Multiple-Services-Credit-Control".new(
      "Service-Identifier": :ej.get({"Service-Identifier"}, accumulator) |> check_udefined,
      "Rating-Group": :ej.get({"Rating-Group"}, accumulator) |> check_udefined,
      "Validity-Time": :ej.get({"Validity-Time"}, accumulator) |> check_udefined,
      "Granted-Service-Unit": [
        :"Granted-Service-Unit".new(
          "CC-Total-Octets": :ej.get({"Granted-Service-Unit", "CC-Total-Octets"}, accumulator) |> check_udefined, 
          "CC-Input-Octets": :ej.get({"Granted-Service-Unit", "CC-Input-Octets"}, accumulator) |> check_udefined, 
          "CC-Output-Octets": :ej.get({"Granted-Service-Unit", "CC-Output-Octets"}, accumulator) |> check_udefined)
      ],
      "Used-Service-Unit": [
        :"Used-Service-Unit".new(
          "CC-Total-Octets": :ej.get({"Used-Service-Unit", "CC-Total-Octets"}, accumulator)|> check_udefined,
          "CC-Input-Octets": :ej.get({"Used-Service-Unit", "CC-Input-Octets"}, accumulator)|> check_udefined,
          "CC-Output-Octets": :ej.get({"Used-Service-Unit", "CC-Output-Octets"}, accumulator)|> check_udefined)
      ]
    ) 
  end
  def check_udefined(:undefined), do: []
  def check_udefined(x), do: [x]
end
