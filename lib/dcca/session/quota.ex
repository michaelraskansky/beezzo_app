defmodule Dcca.Session.Quota do

  def evaluate_quotas(session_req = Dcca.SessionRequest[ccr: CCR["Multiple-Services-Credit-Control": []]]), do: {:ok, session_req}
  def evaluate_quotas(session_req) do

    quotas = session_req.quotas

    multis =  RecordHelpers.list_rec_converter(session_req.ccr."Multiple-Services-Credit-Control")

    quotas_tr = quotas 
                |> accumulator_list_to_tagged_record_list
                |> list_rec_converter

    granted = lc(multi inlist multis, do: evaluate_quotas_2(multi, quotas_tr)) 

    multiple_services_reply = Enum.map(granted, &(prepare_multiple_services(&1)))

    updated_quotas = granted
                     |> Enum.filter(fn {stat, _, _} -> stat == :quota_granted end)
                     |> Enum.scan(quotas, &(update_quotas(&1, &2)))
                     |> List.last

    denilify = fn x -> if x == nil, do: quotas, else: x end
    session_req = session_req.cca(session_req.cca."Multiple-Services-Credit-Control"(multiple_services_reply))
    session_req = session_req.quotas denilify.(updated_quotas)
    {:ok, session_req}

  end

  # This evaluates specific multi with all avaliable quotas
  defp evaluate_quotas_2(multi, [{key,head}|tail]) do
    case evaluate_quotas_3(multi, head) do
      :quota_granted ->
        {:quota_granted, multi."Result-Code"([2001]), key}
      :quota_not_granted ->
        evaluate_quotas_2(multi, tail)
    end
  end

  # end of quotas avaliable reaced with not matches
  defp evaluate_quotas_2(multi, []) do
    {:quota_not_granted, multi."Result-Code"([4012]), :stub}
  end

  # Evaluate one multi to one quota
  defp evaluate_quotas_3(multi, quota) do
        
    service_identifier_tup = { multi."Service-Identifier", quota."Service-Identifier" }
    rating_group_tup = { multi."Rating-Group", quota."Rating-Group" }

    [requested_service_unit] = multi."Requested-Service-Unit"
    [granted_service_unit] = quota."Granted-Service-Unit"
    used_service_unit = get_used_service_unit(multi."Used-Service-Unit")

    cc_total_octets_tup = { 
      requested_service_unit."CC-Total-Octets",  
      granted_service_unit."CC-Total-Octets", 
      used_service_unit."CC-Total-Octets" }

    cc_input_octets_tup = { 
      requested_service_unit."CC-Input-Octets",  
      granted_service_unit."CC-Input-Octets", 
      used_service_unit."CC-Input-Octets" }

    cc_output_octets_tup = { 
      requested_service_unit."CC-Output-Octets",  
      granted_service_unit."CC-Output-Octets", 
      used_service_unit."CC-Output-Octets" }

    cc_money_tup = { 
      requested_service_unit."CC-Money",  
      granted_service_unit."CC-Money", 
      used_service_unit."CC-Money" }

    cc_service_specific_unit_tup = { 
      requested_service_unit."CC-Service-Specific-Units",  
      granted_service_unit."CC-Service-Specific-Units",  
      used_service_unit."CC-Service-Specific-Units" }

    cc_time_tup = { 
      requested_service_unit."CC-Time",  
      granted_service_unit."CC-Time", 
      used_service_unit."CC-Time" }

    service_tuples = {service_identifier_tup, rating_group_tup}

    cc_tuples = [
      cc_total_octets_tup, 
      cc_input_octets_tup, 
      cc_output_octets_tup, 
      cc_money_tup, 
      cc_service_specific_unit_tup, 
      cc_time_tup]

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

  # if requested is less then granted - used continue to the next tuple
  defp check_tuples([ { [x] , [y] , [z] } | tail ]) when x <= y - z, do: check_tuples(tail)

  # if the the unit was not requested we move to the next tuple
  defp check_tuples([ { _x  , []  , _z  } | tail ]), do: check_tuples(tail)

  # if 0 of the unit was requested we move to the next tuple
  defp check_tuples([ { _x  , [0] , _z  } | tail ]), do: check_tuples(tail)

  # if the above to not qualify we return quota not granted
  defp check_tuples([ { [_x], [_y], [_z] } | _tail ]), do: :quota_not_granted

  # All tuples where check and the list is empty we return :quota granted.
  defp check_tuples([]), do: :quota_granted

  defp update_quotas({:quota_granted, multi, key}, avaliable) do
    case multi."Used-Service-Unit" do
      [used_service_unit] ->

        cc_total = used_service_unit."CC-Total-Octets" |> normalize
        cc_input = used_service_unit."CC-Input-Octets" |> normalize
        cc_output = used_service_unit."CC-Output-Octets" |> normalize
        cc_money = used_service_unit."CC-Money" |> normalize
        cc_specific = used_service_unit."CC-Service-Specific-Units" |> normalize
        cc_time = used_service_unit."CC-Time" |> normalize

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

        old_cc_total = :ej.get({key, "Used-Service-Unit", "CC-Total-Octets"}, avaliable) |> normalize
        old_cc_input = :ej.get({key, "Used-Service-Unit", "CC-Input-Octets"}, avaliable) |> normalize
        old_cc_output = :ej.get({key, "Used-Service-Unit", "CC-Output-Octets"}, avaliable) |> normalize
        old_cc_money = :ej.get({key, "Used-Service-Unit", "CC-Money"}, avaliable) |> normalize
        old_cc_specific = :ej.get({key, "Used-Service-Unit", "CC-Service-Specific-Units"}, avaliable) |> normalize
        old_cc_time = :ej.get({key, "Used-Service-Unit", "CC-Time"}, avaliable) |> normalize

        res = :ej.set({key, "Used-Service-Unit", "CC-Total-Octets"}, res, old_cc_total + cc_total)
        res = :ej.set({key, "Used-Service-Unit", "CC-Input-Octets"}, res, old_cc_input + cc_input)
        res = :ej.set({key, "Used-Service-Unit", "CC-Output-Octets"}, res, old_cc_output + cc_output)
        res = :ej.set({key, "Used-Service-Unit", "CC-Money"}, res, old_cc_money + cc_money)
        res = :ej.set({key, "Used-Service-Unit", "CC-Service-Specific-Units"}, res, old_cc_specific + cc_specific)
        res = :ej.set({key, "Used-Service-Unit", "CC-Time"}, res, old_cc_time + cc_time)

      [] -> 
        avaliable
    end
  end

  # Helper Functions ################################################################################################################################
  defp normalize(:undefined), do: 0
  defp normalize([num]), do: num
  defp normalize([]), do: 0
  defp normalize(x) when is_integer(x), do: x

  defp get_used_service_unit([]), do: :"Used-Service-Unit"[_: [0]]
  defp get_used_service_unit([used_service_unit]), do: used_service_unit

  defp accumulator_list_to_tagged_record_list({accumulators}) do
    lc accu inlist :proplists.get_keys(accumulators), do: {accu, :proplists.get_value(accu, accumulators) |> accumulator_to_record}
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
  defp list_rec_converter(to_records) do 
    lc {key, rec} inlist to_records, do: {key, RecordHelpers.rec_converter(rec)}
  end

  defp prepare_multiple_services({:quota_not_granted, multi, _}), do: RecordHelpers.rec_converter(multi)
  defp prepare_multiple_services(rec = {:quota_granted, _multi, _}) do
    {_,multi} = requested_to_granted(rec)
    multi = multi."Used-Service-Unit" []
    RecordHelpers.rec_converter multi
  end

  defp requested_to_granted({:quota_not_granted, multi, key}), do: {key, multi}
  defp requested_to_granted({:quota_granted, multi = Multiple_Services_Credit_Control[], key}) do
    res = multi."Granted-Service-Unit" [requested_to_granted(multi."Requested-Service-Unit")]
    {key, res."Requested-Service-Unit" []}
  end
  defp requested_to_granted([req]) do
    :"Granted-Service-Unit".new(
      "Tariff-Time-Change": [],
      "CC-Time": req."CC-Time",
      "CC-Money": req."CC-Money",
      "CC-Total-Octets": req."CC-Total-Octets",
      "CC-Input-Octets": req."CC-Input-Octets",
      "CC-Output-Octets": req."CC-Output-Octets")
  end
  # Helper Functions ################################################################################################################################
end
