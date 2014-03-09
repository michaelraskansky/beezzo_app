defmodule Dcca.Db.Accumulators do
  """
  def accumulator_list_to_record_list({accumulators}) do
    lc accu inlist :proplists.get_keys(accumulators), do: :proplists.get_value(accu, accumulators) |> accumulator_to_record
  end
  """
  def get_accumulators(pool \\ :db, subscription) do
    case :cberl.get pool, atom_to_binary(subscription) do
      {_, _, data} ->
        { :ok, data |> ej_get({"Multiple-Services-Credit-Control"}) |> init_session_accumulator }

      error = {_key, {:error, :key_enoent}} ->
        error
      error = {_key, {:error, :etimedout}} ->
        error
    end
  end
  def set_accumulators(pool \\ :db, session_req) do
    case :cberl.get pool, atom_to_binary(session_req.subscription) do

      {_, _, data} ->
        data 
        |> compute_updated_accum(session_req.quotas)
        |> update_db(session_req.subscription)

      error = {_key, {:error, :key_enoent}} ->
        error

      error = {_key, {:error, :etimedout}} ->
        error

    end
  end

  # Private Helper Functions #######################################################################################################

  defp compute_updated_accum(from_db, from_session) do
    Enum.scan(get_keys(from_session), from_db, &(compute_updated_accum(&1, from_session, &2))) |> List.last
  end
  def compute_updated_accum(service, from_session, updated) do
    used_in_session = ej_get(from_session, {service, "Used-Service-Unit", "CC-Total-Octets"})
    used_before_session = ej_get(updated, {"Multiple-Services-Credit-Control", service, "Used-Service-Unit", "CC-Total-Octets"})
    granted_before_session = ej_get(updated, {"Multiple-Services-Credit-Control", service, "Granted-Service-Unit", "CC-Total-Octets"})

    updated
    |> ej_set({"Multiple-Services-Credit-Control", service, "Used-Service-Unit", "CC-Total-Octets"}, used_in_session + used_before_session) 
    |> ej_set({"Multiple-Services-Credit-Control", service, "Granted-Service-Unit", "CC-Total-Octets"}, granted_before_session - used_in_session)

  end
  def update_db(updated_accumulators, subscription) do
    :cberl.set(:db, atom_to_binary(subscription), 0, updated_accumulators)
  end

  defp init_session_accumulator(from_db), do: Enum.scan(get_keys(from_db), from_db, &(init_session_accumulator(&1, &2))) |> List.last
  defp init_session_accumulator(accum, data) do

    grant_db = ej_get(data, {accum, "Granted-Service-Unit", "CC-Total-Octets"}) 
    used_db  = ej_get(data, {accum, "Used-Service-Unit", "CC-Total-Octets"}) 

    ej_set(data, {accum, "Granted-Service-Unit", "CC-Total-Octets"}, grant_db - used_db) 
    |> ej_set({accum, "Used-Service-Unit", "CC-Total-Octets"}, 0)

  end
  defp get_keys({data}), do: :proplists.get_keys data
  defp ej_get(data, path), do: :ej.get(path, data)
  defp ej_set(data, path, to), do: :ej.set(path, data, to)
  defp decode(json), do: :jiffy.decode(json)
  defp encode(json), do: :jiffy.encode(json)

  # Private Helper Functions #######################################################################################################
end
