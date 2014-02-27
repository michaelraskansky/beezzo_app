defmodule Dcca.Session.Quota do

  # if nothing is requestes do nothing
  def evaluate_quotas([], _quotas), do: {:ok, :nothing_requested}

  # entry function, this fun will transform the allowed quotas to multi services record for easier 
  # proccesing
  def evaluate_quotas(multis, quotas) do

    # Transform Multiple-Service-Credit-Control Records to Elixir native for easier proccesing
    multis =  RecordHelpers.list_rec_converter(multis)

    # Transfom the allowed quotas to Multiple-Service-Credit-Control Records (Erlang) for easier proccesing
    # Transform Quotas to Elixir records
    quotas_tr = quotas 
              |> accumulator_list_to_tagged_record_list
              |> list_rec_converter

    # Start checking quotas
    granted = lc(multi inlist multis, do: evaluate_quotas_2(multi, quotas_tr)) 

    multiple_services_reply = Enum.map(granted, &(prepare_multiple_services(&1)))

    updated_quotas = granted
                      |> Enum.filter(fn {stat, _, _} -> stat == :quota_granted end)
                      |> Enum.map(&(requested_to_granted(&1)))
                      |> Enum.scan({quotas}, &(update_quotas(&1, &2)))
                      |> List.last

    {updated_quotas, multiple_services_reply}

  end
  def accumulator_list_to_tagged_record_list(accumulators) do
    lc accu inlist :proplists.get_keys(accumulators), do: {accu, :proplists.get_value(accu, accumulators) |> Dcca.Db.Utils.accumulator_to_record}
  end
  def list_rec_converter(to_records) do 
    lc {key, rec} inlist to_records, do: {key, RecordHelpers.rec_converter(rec)}
  end

  # This evaluates specific multi with all avaliable quotas
  defp evaluate_quotas_2(multi, [{key,head}|tail]) do
    case evaluate_quotas_3(multi, head) do
      :quota_granted ->
        {:quota_granted, multi."Result-Code"(2001), key}
      :quota_not_granted ->
        evaluate_quotas_2(multi, tail)
    end
  end

  # end of quotas avaliable reaced with not matches
  defp evaluate_quotas_2(multi, []) do
    {:quota_not_granted, multi."Result-Code"(4012), :stub}
  end

  # Evaluate one multi to one quota
  defp evaluate_quotas_3(multi, quota) do

    service_identifier_tup = { multi."Service-Identifier", quota."Service-Identifier" }
    rating_group_tup = { multi."Rating-Group", quota."Rating-Group" }
    [requested_service_unit] = multi."Requested-Service-Unit"
    [granted_service_unit] = quota."Granted-Service-Unit"

    cc_total_octets_tup = { requested_service_unit."CC-Total-Octets",  granted_service_unit."CC-Total-Octets" }
    cc_input_octets_tup = { requested_service_unit."CC-Input-Octets",  granted_service_unit."CC-Input-Octets" }
    cc_output_octets_tup = { requested_service_unit."CC-Output-Octets",  granted_service_unit."CC-Output-Octets" }
    cc_money_tup = { requested_service_unit."CC-Money",  granted_service_unit."CC-Money" }
    cc_service_specific_unit_tup = { requested_service_unit."CC-Service-Specific-Units",  granted_service_unit."CC-Service-Specific-Units" }
    cc_time_tup = { requested_service_unit."CC-Time",  granted_service_unit."CC-Time" }
    
    service_tuples = {service_identifier_tup, rating_group_tup}
    cc_tuples = [cc_total_octets_tup, cc_input_octets_tup, cc_output_octets_tup, cc_money_tup, cc_service_specific_unit_tup, cc_time_tup]

    check_service(service_tuples, cc_tuples)
  end

  defp check_service(services, cc_tuples) do
    case services do

      { {[x],[y]}, {_,_} } when x == y ->
        check_tuples(cc_tuples)

      { {[],[]}, {[x],[y]} } when x == y ->
        check_tuples(cc_tuples)

      {_, _} ->
        :quota_not_granted
    end
  end

  defp check_tuples([ { [x], [y] } | tail ]) when x <= y do
    check_tuples(tail)
  end
  defp check_tuples([{_ ,[]} | tail]) do
    check_tuples(tail)
  end
  defp check_tuples([{_ ,[0]} | tail]) do
    check_tuples(tail)
  end
  defp check_tuples([ { [_x], [_y] } | tail ]) do
    :quota_not_granted
  end
  defp check_tuples([]) do
    :quota_granted
  end
  def prepare_multiple_services(rec = {:quota_granted, multi, _}) do
    {_,multi} = requested_to_granted(rec)
    RecordHelpers.rec_converter multi

  end
  def prepare_multiple_services({:quota_not_granted, multi, _}), do: RecordHelpers.rec_converter(multi)

  def requested_to_granted({:quota_not_granted, multi, pattern}), do: {pattern, multi}
  def requested_to_granted({:quota_granted, multi = Multiple_Services_Credit_Control[], pattern}) do
    res = multi."Granted-Service-Unit" [requested_to_granted(multi."Requested-Service-Unit")]
    {pattern, res."Requested-Service-Unit" []}
  end
  def requested_to_granted([req]) do
    :"Granted-Service-Unit".new(
      "Tariff-Time-Change": [],
      "CC-Time": req."CC-Time",
      "CC-Money": req."CC-Money",
      "CC-Total-Octets": req."CC-Total-Octets",
      "CC-Input-Octets": req."CC-Input-Octets",
      "CC-Output-Octets": req."CC-Output-Octets")
  end

  def update_quotas({key, multi}, avaliable) do
    [granted_service_unit] = multi."Granted-Service-Unit"

    cc_total = granted_service_unit."CC-Total-Octets" |> normalize
    cc_input = granted_service_unit."CC-Input-Octets" |> normalize
    cc_output = granted_service_unit."CC-Output-Octets" |> normalize
    cc_money = granted_service_unit."CC-Money" |> normalize
    cc_specific = granted_service_unit."CC-Service-Specific-Units" |> normalize
    cc_time = granted_service_unit."CC-Time" |> normalize

    old_cc_total = :ej.get({key, "Granted-Service-Unit", "CC-Total-Octets"}, avaliable) |> normalize
    old_cc_input = :ej.get({key, "Granted-Service-Unit", "CC-Input-Octets"}, avaliable) |> normalize
    old_cc_output = :ej.get({key, "Granted-Service-Unit", "CC-Output-Octets"}, avaliable) |> normalize
    old_cc_money = :ej.get({key, "Granted-Service-Unit", "CC-Money"}, avaliable) |> normalize
    old_cc_specific = :ej.get({key, "Granted-Service-Unit", "CC-Service-Specific-Units"}, avaliable) |> normalize
    old_cc_time = :ej.get({key, "Granted-Service-Unit", "CC-Time"}, avaliable) |> normalize

    res = :ej.set({key, "Granted-Service-Unit", "CC-Total-Octets"}, avaliable, old_cc_total - cc_total)
    res = :ej.set({key, "Granted-Service-Unit", "CC-Input-Octets"}, res, old_cc_input - cc_input)
    res = :ej.set({key, "Granted-Service-Unit", "CC-Output-Octets"}, res, old_cc_output - cc_output)
    res = :ej.set({key, "Granted-Service-Unit", "CC-Money"}, res, old_cc_money - cc_money)
    res = :ej.set({key, "Granted-Service-Unit", "CC-Service-Specific-Units"}, res, old_cc_specific - cc_specific)
    res = :ej.set({key, "Granted-Service-Unit", "CC-Time"}, res, old_cc_time - cc_time)
  end

  def normalize(:undefined), do: 0
  def normalize([num]), do: num
  def normalize([]), do: 0
  def normalize(x) when is_integer(x), do: x
end
