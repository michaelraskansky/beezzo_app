
defmodule Dcca.Session.Quota do

  # if nothing is requestes do nothing
  def evaluate_quotas([], _quotas), do: {:ok, :nothing_requested}

  # entry function, this fun will transform the allowed quotas to multi services record for easier 
  # proccesing
  def evaluate_quotas(multis, quotas) do
    multis = lc multi inlist multis, do: RecordHelpers.rec_converter(multi)
    quotas = Dcca.Db.Utils.accumulator_list_to_record_list(quotas)
    quotas = lc quota inlist quotas, do: RecordHelpers.rec_converter(quota)
    res = lc multi inlist multis, do: evaluate_quotas_2(multi, quotas)
    IO.puts inspect res
  end

  # This evaluates specific multi with all avaliable quotas
  def evaluate_quotas_2(multi, [head|tail]) do
    case evaluate_quotas_3(multi, head) do
      :quota_granted ->
        {:quota_granted, multi}
      :quota_not_granted ->
        evaluate_quotas_2(multi, tail)
    end
  end

  # end of quotas avaliable reaced with not matches
  def evaluate_quotas_2(multi, []) do
    {:quota_not_granted, multi}
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

  def check_service(services, cc_tuples) do
    case services do

      { {[x],[y]}, {_,_} } when x == y ->
        check_tuples(cc_tuples)

      { {[],[]}, {[x],[y]} } when x == y ->
        check_tuples(cc_tuples)

      {_, _} ->
        :quota_not_granted
    end
  end

  def check_tuples([ { [x], [y] } | tail ]) when x >= y do
    check_tuples(tail)
  end
  def check_tuples([{_ ,[]} | tail]) do
    check_tuples(tail)
  end
  def check_tuples([{_ ,[0]} | tail]) do
    check_tuples(tail)
  end
  def check_tuples([ { [_x], [_y] } | tail ]) do
    :quota_not_granted
  end
  def check_tuples([]) do
    :quota_granted
  end
end
