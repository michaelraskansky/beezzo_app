defmodule DccaTest do
  use ExUnit.Case

  test "evaluate_quotas" do

  """
    Uses requestes to services this is defined by multis variable, 

      1) service identifer 1 and rating group 1 with a request of 52428800 total
      2) service identifier 3 and rating group 2 with a request of 52428800 total

    the quota variable allows two services

      1) service identifier 1 rating group 2 and total octets 52428800 
      2) service identifier 123 rating group 2 and total octets 52428800

    the result should be a tuple with the multi that should be granted and the updated quota,
    
      1) service 1 rating 1 should be granted with the requested quota (2001)
      1) service 3 rating 2 should be rejects since the user is not allowed service 3 even though the rating matches.
    
  """

    multi = [{:"Multiple-Services-Credit-Control", [],
      [{:"Requested-Service-Unit", [], [], [52428800], [], [], [], []}], [], [],
      [1], [1], [], [], [], [], [], [], [], [], [], [], [], [], []},

    {:"Multiple-Services-Credit-Control", [],
      [{:"Requested-Service-Unit", [], [], [52428800], [], [], [], []}], [], [],
      [3], [2], [], [], [], [], [], [], [], [], [], [], [], [], []}]

  
    quota = {[{"1",
      {[{"Service-Identifier", 1}, {"Rating-Group", 2}, {"Validity-Time", 3600},
        {"Granted-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 52428800}]}},
        {"Used-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 0}]}}]}},
      {"2",
      {[{"Service-Identifier", 123}, {"Rating-Group", 2}, {"Validity-Time", 3600},
        {"Granted-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 52428800}]}},
        {"Used-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 0}]}}]}}]}
    
    multi_to_return = 
      [{:"Multiple-Services-Credit-Control",
      [{:"Granted-Service-Unit", [], [], [], [52428800], [], [], [], []}], [], [],
      [], [1], [1], [], [], 2001, [], [], [], [], [], [], [], [], [], []},

      {:"Multiple-Services-Credit-Control", [],
      [{:"Requested-Service-Unit", [], [], [52428800], [], [], [], []}], [], [],
      [3], [2], [], [], 4012, [], [], [], [], [], [], [], [], [], []}]

    quotas_to_return = {[{"1",
      {[{"Service-Identifier", 1}, {"Rating-Group", 2}, {"Validity-Time", 3600},
        {"Granted-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 0}, {"CC-Money", 0},
            {"CC-Service-Specific-Units", 0}, {"CC-Time", 0}]}},
          {"Used-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 0}]}}]}},
      {"2",
        {[{"Service-Identifier", 123}, {"Rating-Group", 2}, {"Validity-Time", 3600},
          {"Granted-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 52428800}]}},
          {"Used-Service-Unit",
          {[{"CC-Input-Octets", 0}, {"CC-Output-Octets", 0},
            {"CC-Total-Octets", 0}]}}]}}]}

    assert( Dcca.Session.Quota.evaluate_quotas(multi, quota) == {multi_to_return, quotas_to_return} )
  end
end
