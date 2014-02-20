%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

%%
%% Copyright (c) Ericsson AB. All rights reserved.
%%
%% The information in this document is the property of Ericsson.
%%
%% Except as specifically authorized in writing by Ericsson, the
%% receiver of this document shall keep the information contained
%% herein confidential and shall protect the same in whole or in
%% part from disclosure and dissemination to third parties.
%%
%% Disclosure and disseminations to the receivers employees shall
%% only be made on a strict need to know basis.
%%

-module(ro_rel6).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records(['CCR', 'CCA', 'Cost-Information',
		 'Unit-Value', 'Granted-Service-Unit',
		 'Requested-Service-Unit', 'Used-Service-Unit',
		 'CC-Money', 'G-S-U-Pool-Reference',
		 'Final-Unit-Indication', 'Redirect-Server',
		 'Service-Parameter-Info', 'Subscription-Id',
		 'User-Equipment-Info',
		 'Multiple-Services-Credit-Control',
		 'Additional-Content-Information', 'Address-Domain',
		 'Application-Server-Information', 'Event-Type',
		 'IMS-Information', 'Inter-Operator-Identifier',
		 'LCS-Client-ID', 'LCS-Client-Name', 'LCS-Information',
		 'LCS-Requestor-ID', 'Location-Type', 'MBMS-Information',
		 'Message-Body', 'Message-Class', 'MM-Content-Type',
		 'MMS-Information', 'Originator-Address',
		 'PoC-Information', 'PS-Furnish-Charging-Information',
		 'PS-Information', 'Recipient-Address',
		 'SDP-Media-Component', 'Service-Information',
		 'Time-Stamps', 'Trigger', 'WLAN-Information',
		 'WLAN-Radio-Container', 'Trunk-Group-ID', 'Proxy-Info',
		 'Failed-AVP', 'Experimental-Result',
		 'Vendor-Specific-Application-Id', 'E2E-Sequence']).

-record('CCR',
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Auth-Application-Id',
	 'Service-Context-Id', 'CC-Request-Type',
	 'CC-Request-Number', 'Destination-Host' = [],
	 'User-Name' = [], 'CC-Sub-Session-Id' = [],
	 'Acct-Multi-Session-Id' = [], 'Origin-State-Id' = [],
	 'Event-Timestamp' = [], 'Subscription-Id' = [],
	 'Service-Identifier' = [], 'Termination-Cause' = [],
	 'Requested-Service-Unit' = [], 'Requested-Action' = [],
	 'Used-Service-Unit' = [],
	 'Multiple-Services-Indicator' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'Service-Parameter-Info' = [], 'CC-Correlation-Id' = [],
	 'User-Equipment-Info' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'Service-Information' = [],
	 'AVP' = []}).

-record('CCA',
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'Auth-Application-Id',
	 'CC-Request-Type', 'CC-Request-Number',
	 'User-Name' = [], 'CC-Session-Failover' = [],
	 'CC-Sub-Session-Id' = [], 'Acct-Multi-Session-Id' = [],
	 'Origin-State-Id' = [], 'Event-Timestamp' = [],
	 'Granted-Service-Unit' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'Cost-Information' = [], 'Final-Unit-Indication' = [],
	 'Check-Balance-Result' = [],
	 'Credit-Control-Failure-Handling' = [],
	 'Direct-Debiting-Failure-Handling' = [],
	 'Validity-Time' = [], 'Redirect-Host' = [],
	 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'Failed-AVP' = [],
	 'Service-Information' = [], 'AVP' = []}).

-record('Cost-Information',
	{'Unit-Value', 'Currency-Code', 'Cost-Unit' = []}).

-record('Unit-Value',
	{'Value-Digits', 'Exponent' = []}).

-record('Granted-Service-Unit',
	{'Tariff-Time-Change' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('Requested-Service-Unit',
	{'CC-Time' = [], 'CC-Money' = [],
	 'CC-Total-Octets' = [], 'CC-Input-Octets' = [],
	 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('Used-Service-Unit',
	{'Tariff-Change-Usage' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('CC-Money',
	{'Unit-Value', 'Currency-Code' = []}).

-record('G-S-U-Pool-Reference',
	{'G-S-U-Pool-Identifier', 'CC-Unit-Type',
	 'Unit-Value'}).

-record('Final-Unit-Indication',
	{'Final-Unit-Action', 'Restriction-Filter-Rule' = [],
	 'Filter-Id' = [], 'Redirect-Server' = []}).

-record('Redirect-Server',
	{'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('Service-Parameter-Info',
	{'Service-Parameter-Type', 'Service-Parameter-Value'}).

-record('Subscription-Id',
	{'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('User-Equipment-Info',
	{'User-Equipment-Info-Type',
	 'User-Equipment-Info-Value'}).

-record('Multiple-Services-Credit-Control',
	{'Granted-Service-Unit' = [],
	 'Requested-Service-Unit' = [], 'Used-Service-Unit' = [],
	 'Tariff-Change-Usage' = [], 'Service-Identifier' = [],
	 'Rating-Group' = [], 'G-S-U-Pool-Reference' = [],
	 'Validity-Time' = [], 'Result-Code' = [],
	 'Final-Unit-Indication' = [],
	 'Time-Quota-Threshold' = [],
	 'Volume-Quota-Threshold' = [],
	 'Unit-Quota-Threshold' = [], 'Quota-Holding-Time' = [],
	 'Quota-Consumption-Time' = [], 'Reporting-Reason' = [],
	 'Trigger' = [], 'PS-Furnish-Charging-Information' = [],
	 'AVP' = []}).

-record('Additional-Content-Information',
	{'Type-Number' = [], 'Additional-Type-Information' = [],
	 'Content-Size' = []}).

-record('Address-Domain',
	{'Domain-Name' = [], '3GPP-IMSI-MCC-MNC' = []}).

-record('Application-Server-Information',
	{'Application-Server' = [],
	 'Application-provided-called-party-address' = []}).

-record('Event-Type',
	{'SIP-Method' = [], 'Event' = [], 'Expires' = []}).

-record('IMS-Information',
	{'Node-Functionality', 'Event-Type' = [],
	 'Role-Of-Node' = [], 'User-Session-ID' = [],
	 'Calling-Party-Address' = [],
	 'Called-Party-Address' = [],
	 'Called-Asserted-Identity' = [],
	 'Requested-Party-Address' = [], 'Associated-URI' = [],
	 'Time-Stamps' = [],
	 'Application-Server-Information' = [],
	 'Inter-Operator-Identifier' = [],
	 'IMS-Charging-Identifier' = [],
	 'SDP-Session-Description' = [],
	 'SDP-Media-Component' = [],
	 'Served-Party-IP-Address' = [],
	 'Server-Capabilities' = [], 'Trunk-Group-ID' = [],
	 'Bearer-Service' = [], 'Service-Id' = [],
	 'Service-Specific-Data' = [], 'Message-Body' = [],
	 'Cause-Code' = []}).

-record('Inter-Operator-Identifier',
	{'Originating-IOI' = [], 'Terminating-IOI' = []}).

-record('LCS-Client-ID',
	{'LCS-Client-Type' = [], 'LCS-Client-External-ID' = [],
	 'LCS-Client-Dialed-By-MS' = [], 'LCS-Client-Name' = [],
	 'LCS-APN' = [], 'LCS-Requestor-ID' = []}).

-record('LCS-Client-Name',
	{'LCS-Data-Coding-Scheme' = [], 'LCS-Name-String' = [],
	 'LCS-Format-Indicator' = []}).

-record('LCS-Information',
	{'LCS-Client-ID' = [], 'Location-Type' = [],
	 'Location-Estimate' = [], 'Positioning-Data' = [],
	 '3GPP-IMSI' = [], 'MSISDN' = []}).

-record('LCS-Requestor-ID',
	{'LCS-Data-Coding-Scheme' = [],
	 'LCS-Requestor-ID-String' = []}).

-record('Location-Type',
	{'Location-Estimate-Type' = [],
	 'Deferred-Location-Event-Type' = []}).

-record('MBMS-Information',
	{'TMGI' = [], 'MBMS-Service-Type' = [],
	 'MBMS-User-Service-Type' = [],
	 'File-Repair-Supported' = [],
	 'Required-MBMS-Bearer-Capabilities' = [],
	 'MBMS-2G-3G-Indicator' = [], 'RAI' = [],
	 'MBMS-Service-Area' = [],
	 'MBMS-Session-Identity' = []}).

-record('Message-Body',
	{'Content-Type', 'Content-Length',
	 'Content-Disposition' = [], 'Originator' = []}).

-record('Message-Class',
	{'Class-Identifier' = [], 'Token-Text' = []}).

-record('MM-Content-Type',
	{'Type-Number' = [], 'Additional-Type-Information' = [],
	 'Content-Size' = [],
	 'Additional-Content-Information' = []}).

-record('MMS-Information',
	{'Originator-Address' = [], 'Recipient-Address' = [],
	 'Submission-Time' = [], 'MM-Content-Type' = [],
	 'Priority' = [], 'Message-ID' = [], 'Message-Type' = [],
	 'Message-Size' = [], 'Message-Class' = [],
	 'Delivery-Report-Requested' = [],
	 'Read-Reply-Report-Requested' = [],
	 'MMBox-Storage-Requested' = [], 'Applic-ID' = [],
	 'Reply-Applic-ID' = [], 'Aux-Applic-Info' = [],
	 'Content-Class' = [], 'DRM-Content' = [],
	 'Adaptations' = [], 'VASP-Id' = [], 'VAS-Id' = []}).

-record('Originator-Address',
	{'Address-Type' = [], 'Address-Data' = [],
	 'Address-Domain' = []}).

-record('PoC-Information',
	{'PoC-Server-Role' = [], 'PoC-Session-Type' = [],
	 'Number-Of-Participants' = [],
	 'Participants-Involved' = [],
	 'Talk-Burst-Exchange' = [],
	 'PoC-Controlling-Address' = [], 'PoC-Group-Name' = [],
	 'PoC-Session-Id' = [], 'Charged-Party' = []}).

-record('PS-Furnish-Charging-Information',
	{'3GPP-Charging-Id', 'PS-Free-Format-Data',
	 'PS-Append-Free-Format-Data' = []}).

-record('PS-Information',
	{'3GPP-Charging-Id' = [], '3GPP-PDP-Type' = [],
	 'PDP-Address' = [],
	 '3GPP-GPRS-Negotiated-QoS-Profile' = [],
	 'SGSN-Address' = [], 'GGSN-Address' = [],
	 'CG-Address' = [], '3GPP-IMSI-MCC-MNC' = [],
	 '3GPP-GGSN-MCC-MNC' = [], '3GPP-NSAPI' = [],
	 'Called-Station-Id' = [],
	 '3GPP-Session-Stop-Indicator' = [],
	 '3GPP-Selection-Mode' = [],
	 '3GPP-Charging-Characteristics' = [],
	 '3GPP-SGSN-MCC-MNC' = [], '3GPP-MS-TimeZone' = [],
	 'Charging-Rule-Base-Name' = [],
	 '3GPP-User-Location-Info' = [], '3GPP-RAT-Type' = [],
	 'PS-Furnish-Charging-Information' = [],
	 'PDP-Context-Type' = []}).

-record('Recipient-Address',
	{'Address-Type' = [], 'Address-Data' = [],
	 'Address-Domain' = [], 'Addressee-Type' = []}).

-record('SDP-Media-Component',
	{'SDP-Media-Name' = [], 'SDP-Media-Description' = [],
	 'Media-Initiator-Flag' = [], 'Authorized-QoS' = [],
	 '3GPP-Charging-Id' = []}).

-record('Service-Information',
	{'PS-Information' = [], 'WLAN-Information' = [],
	 'IMS-Information' = [], 'MMS-Information' = [],
	 'LCS-Information' = [], 'PoC-Information' = [],
	 'MBMS-Information' = []}).

-record('Time-Stamps',
	{'SIP-Request-Timestamp' = [],
	 'SIP-Response-Timestamp' = []}).

-record('Trigger', {'Trigger-Type' = []}).

-record('WLAN-Information',
	{'WLAN-Session-Id' = [], 'PDG-Address' = [],
	 'PDG-Charging-Id' = [], 'WAG-Address' = [],
	 'WAG-PLMN-Id' = [], 'WLAN-Radio-Container' = [],
	 'WLAN-UE-Local-IPAddress' = []}).

-record('WLAN-Radio-Container',
	{'Operator-Name' = [], 'Location-Type' = [],
	 'Location-Information' = [], 'WLAN-Technology' = []}).

-record('Trunk-Group-ID',
	{'Incoming-Trunk-Group-ID' = [],
	 'Outgoing-Trunk-Group-ID' = []}).

-record('Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('E2E-Sequence', {'AVP' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> ro_rel6.

id() -> 4.

vendor_id() -> 10415.

vendor_name() -> 'TGPP'.

msg_name(272, true) -> 'CCR';
msg_name(272, false) -> 'CCA';
msg_name(_, _) -> ''.

msg_header('CCR') -> {272, 192, 4};
msg_header('CCA') -> {272, 64, 4};
msg_header(_) -> erlang:error(badarg).

rec2msg('CCR') -> 'CCR';
rec2msg('CCA') -> 'CCA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('CCR') -> 'CCR';
msg2rec('CCA') -> 'CCA';
msg2rec(_) -> erlang:error(badarg).

name2rec('Cost-Information') -> 'Cost-Information';
name2rec('Unit-Value') -> 'Unit-Value';
name2rec('Granted-Service-Unit') ->
    'Granted-Service-Unit';
name2rec('Requested-Service-Unit') ->
    'Requested-Service-Unit';
name2rec('Used-Service-Unit') -> 'Used-Service-Unit';
name2rec('CC-Money') -> 'CC-Money';
name2rec('G-S-U-Pool-Reference') ->
    'G-S-U-Pool-Reference';
name2rec('Final-Unit-Indication') ->
    'Final-Unit-Indication';
name2rec('Redirect-Server') -> 'Redirect-Server';
name2rec('Service-Parameter-Info') ->
    'Service-Parameter-Info';
name2rec('Subscription-Id') -> 'Subscription-Id';
name2rec('User-Equipment-Info') ->
    'User-Equipment-Info';
name2rec('Multiple-Services-Credit-Control') ->
    'Multiple-Services-Credit-Control';
name2rec('Additional-Content-Information') ->
    'Additional-Content-Information';
name2rec('Address-Domain') -> 'Address-Domain';
name2rec('Application-Server-Information') ->
    'Application-Server-Information';
name2rec('Event-Type') -> 'Event-Type';
name2rec('IMS-Information') -> 'IMS-Information';
name2rec('Inter-Operator-Identifier') ->
    'Inter-Operator-Identifier';
name2rec('LCS-Client-ID') -> 'LCS-Client-ID';
name2rec('LCS-Client-Name') -> 'LCS-Client-Name';
name2rec('LCS-Information') -> 'LCS-Information';
name2rec('LCS-Requestor-ID') -> 'LCS-Requestor-ID';
name2rec('Location-Type') -> 'Location-Type';
name2rec('MBMS-Information') -> 'MBMS-Information';
name2rec('Message-Body') -> 'Message-Body';
name2rec('Message-Class') -> 'Message-Class';
name2rec('MM-Content-Type') -> 'MM-Content-Type';
name2rec('MMS-Information') -> 'MMS-Information';
name2rec('Originator-Address') -> 'Originator-Address';
name2rec('PoC-Information') -> 'PoC-Information';
name2rec('PS-Furnish-Charging-Information') ->
    'PS-Furnish-Charging-Information';
name2rec('PS-Information') -> 'PS-Information';
name2rec('Recipient-Address') -> 'Recipient-Address';
name2rec('SDP-Media-Component') ->
    'SDP-Media-Component';
name2rec('Service-Information') ->
    'Service-Information';
name2rec('Time-Stamps') -> 'Time-Stamps';
name2rec('Trigger') -> 'Trigger';
name2rec('WLAN-Information') -> 'WLAN-Information';
name2rec('WLAN-Radio-Container') ->
    'WLAN-Radio-Container';
name2rec('Trunk-Group-ID') -> 'Trunk-Group-ID';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('E2E-Sequence') -> 'E2E-Sequence';
name2rec(T) -> msg2rec(T).

avp_name(13, 10415) ->
    {'3GPP-Charging-Characteristics', 'UTF8String'};
avp_name(2, 10415) ->
    {'3GPP-Charging-Id', 'OctetString'};
avp_name(9, 10415) ->
    {'3GPP-GGSN-MCC-MNC', 'UTF8String'};
avp_name(5, 10415) ->
    {'3GPP-GPRS-Negotiated-QoS-Profile', 'UTF8String'};
avp_name(1, 10415) -> {'3GPP-IMSI', 'UTF8String'};
avp_name(8, 10415) ->
    {'3GPP-IMSI-MCC-MNC', 'UTF8String'};
avp_name(23, 10415) ->
    {'3GPP-MS-TimeZone', 'OctetString'};
avp_name(10, 10415) -> {'3GPP-NSAPI', 'OctetString'};
avp_name(3, 10415) -> {'3GPP-PDP-Type', 'OctetString'};
avp_name(21, 10415) -> {'3GPP-RAT-Type', 'OctetString'};
avp_name(18, 10415) ->
    {'3GPP-SGSN-MCC-MNC', 'OctetString'};
avp_name(12, 10415) ->
    {'3GPP-Selection-Mode', 'OctetString'};
avp_name(11, 10415) ->
    {'3GPP-Session-Stop-Indicator', 'OctetString'};
avp_name(22, 10415) ->
    {'3GPP-User-Location-Info', 'OctetString'};
avp_name(1217, 10415) -> {'Adaptations', 'Enumerated'};
avp_name(1207, 10415) ->
    {'Additional-Content-Information', 'Grouped'};
avp_name(1205, 10415) ->
    {'Additional-Type-Information', 'UTF8String'};
avp_name(897, 10415) -> {'Address-Data', 'UTF8String'};
avp_name(898, 10415) -> {'Address-Domain', 'Grouped'};
avp_name(899, 10415) -> {'Address-Type', 'Enumerated'};
avp_name(1208, 10415) ->
    {'Addressee-Type', 'Enumerated'};
avp_name(1218, 10415) -> {'Applic-ID', 'UTF8String'};
avp_name(836, 10415) ->
    {'Application-Server', 'UTF8String'};
avp_name(850, 10415) ->
    {'Application-Server-Information', 'Grouped'};
avp_name(837, 10415) ->
    {'Application-provided-called-party-address',
     'UTF8String'};
avp_name(856, 10415) ->
    {'Associated-URI', 'UTF8String'};
avp_name(849, 10415) ->
    {'Authorized-QoS', 'UTF8String'};
avp_name(1219, 10415) ->
    {'Aux-Applic-Info', 'UTF8String'};
avp_name(854, 10415) ->
    {'Bearer-Service', 'OctetString'};
avp_name(411, undefined) ->
    {'CC-Correlation-Id', 'OctetString'};
avp_name(412, undefined) ->
    {'CC-Input-Octets', 'Unsigned64'};
avp_name(413, undefined) -> {'CC-Money', 'Grouped'};
avp_name(414, undefined) ->
    {'CC-Output-Octets', 'Unsigned64'};
avp_name(415, undefined) ->
    {'CC-Request-Number', 'Unsigned32'};
avp_name(416, undefined) ->
    {'CC-Request-Type', 'Enumerated'};
avp_name(417, undefined) ->
    {'CC-Service-Specific-Units', 'Unsigned64'};
avp_name(418, undefined) ->
    {'CC-Session-Failover', 'Enumerated'};
avp_name(419, undefined) ->
    {'CC-Sub-Session-Id', 'Unsigned64'};
avp_name(420, undefined) -> {'CC-Time', 'Unsigned32'};
avp_name(421, undefined) ->
    {'CC-Total-Octets', 'Unsigned64'};
avp_name(454, undefined) ->
    {'CC-Unit-Type', 'Enumerated'};
avp_name(846, 10415) -> {'CG-Address', 'Address'};
avp_name(1250, 10415) ->
    {'Called-Asserted-Identity', 'UTF8String'};
avp_name(832, 10415) ->
    {'Called-Party-Address', 'UTF8String'};
avp_name(30, undefined) ->
    {'Called-Station-Id', 'UTF8String'};
avp_name(831, 10415) ->
    {'Calling-Party-Address', 'UTF8String'};
avp_name(861, 10415) -> {'Cause-Code', 'Integer32'};
avp_name(857, 10415) -> {'Charged-Party', 'UTF8String'};
avp_name(1004, 10415) ->
    {'Charging-Rule-Base-Name', 'UTF8String'};
avp_name(422, undefined) ->
    {'Check-Balance-Result', 'Enumerated'};
avp_name(1214, 10415) ->
    {'Class-Identifier', 'Enumerated'};
avp_name(1220, 10415) ->
    {'Content-Class', 'Enumerated'};
avp_name(828, 10415) ->
    {'Content-Disposition', 'UTF8String'};
avp_name(827, 10415) ->
    {'Content-Length', 'Unsigned32'};
avp_name(1206, 10415) -> {'Content-Size', 'Unsigned32'};
avp_name(826, 10415) -> {'Content-Type', 'UTF8String'};
avp_name(423, undefined) ->
    {'Cost-Information', 'Grouped'};
avp_name(424, undefined) -> {'Cost-Unit', 'UTF8String'};
avp_name(426, undefined) ->
    {'Credit-Control', 'Enumerated'};
avp_name(427, undefined) ->
    {'Credit-Control-Failure-Handling', 'Enumerated'};
avp_name(425, undefined) ->
    {'Currency-Code', 'Unsigned32'};
avp_name(1221, 10415) -> {'DRM-Content', 'Enumerated'};
avp_name(1230, 10415) ->
    {'Deferred-Location-Event-Type', 'UTF8String'};
avp_name(1216, 10415) ->
    {'Delivery-Report-Requested', 'Enumerated'};
avp_name(428, undefined) ->
    {'Direct-Debiting-Failure-Handling', 'Enumerated'};
avp_name(1200, 10415) -> {'Domain-Name', 'UTF8String'};
avp_name(825, 10415) -> {'Event', 'UTF8String'};
avp_name(823, 10415) -> {'Event-Type', 'Grouped'};
avp_name(888, 10415) -> {'Expires', 'Unsigned32'};
avp_name(429, undefined) -> {'Exponent', 'Integer32'};
avp_name(1224, 10415) ->
    {'File-Repair-Supported', 'Enumerated'};
avp_name(11, undefined) -> {'Filter-Id', 'UTF8String'};
avp_name(449, undefined) ->
    {'Final-Unit-Action', 'Enumerated'};
avp_name(430, undefined) ->
    {'Final-Unit-Indication', 'Grouped'};
avp_name(453, undefined) ->
    {'G-S-U-Pool-Identifier', 'Unsigned32'};
avp_name(457, undefined) ->
    {'G-S-U-Pool-Reference', 'Grouped'};
avp_name(847, 10415) -> {'GGSN-Address', 'Address'};
avp_name(431, undefined) ->
    {'Granted-Service-Unit', 'Grouped'};
avp_name(841, 10415) ->
    {'IMS-Charging-Identifier', 'UTF8String'};
avp_name(876, 10415) -> {'IMS-Information', 'Grouped'};
avp_name(852, 10415) ->
    {'Incoming-Trunk-Group-ID', 'UTF8String'};
avp_name(838, 10415) ->
    {'Inter-Operator-Identifier', 'Grouped'};
avp_name(1231, 10415) -> {'LCS-APN', 'UTF8String'};
avp_name(1233, 10415) ->
    {'LCS-Client-Dialed-By-MS', 'UTF8String'};
avp_name(1234, 10415) ->
    {'LCS-Client-External-ID', 'UTF8String'};
avp_name(1232, 10415) -> {'LCS-Client-ID', 'Grouped'};
avp_name(1235, 10415) -> {'LCS-Client-Name', 'Grouped'};
avp_name(1241, 10415) ->
    {'LCS-Client-Type', 'Enumerated'};
avp_name(1236, 10415) ->
    {'LCS-Data-Coding-Scheme', 'UTF8String'};
avp_name(1237, 10415) ->
    {'LCS-Format-Indicator', 'Enumerated'};
avp_name(878, 10415) -> {'LCS-Information', 'Grouped'};
avp_name(1238, 10415) ->
    {'LCS-Name-String', 'UTF8String'};
avp_name(1239, 10415) ->
    {'LCS-Requestor-ID', 'Grouped'};
avp_name(1240, 10415) ->
    {'LCS-Requestor-ID-String', 'UTF8String'};
avp_name(1242, 10415) ->
    {'Location-Estimate', 'UTF8String'};
avp_name(1243, 10415) ->
    {'Location-Estimate-Type', 'Enumerated'};
avp_name(127, undefined) ->
    {'Location-Information', 'OctetString'};
avp_name(1244, 10415) -> {'Location-Type', 'Grouped'};
avp_name(907, 10415) ->
    {'MBMS-2G-3G-Indicator', 'Enumerated'};
avp_name(880, 10415) -> {'MBMS-Information', 'Grouped'};
avp_name(903, 10415) ->
    {'MBMS-Service-Area', 'OctetString'};
avp_name(906, 10415) ->
    {'MBMS-Service-Type', 'Enumerated'};
avp_name(908, 10415) ->
    {'MBMS-Session-Identity', 'OctetString'};
avp_name(1225, 10415) ->
    {'MBMS-User-Service-Type', 'Enumerated'};
avp_name(1203, 10415) -> {'MM-Content-Type', 'Grouped'};
avp_name(1248, 10415) ->
    {'MMBox-Storage-Requested', 'Enumerated'};
avp_name(877, 10415) -> {'MMS-Information', 'Grouped'};
avp_name(701, 10415) -> {'MSISDN', 'OctetString'};
avp_name(882, 10415) ->
    {'Media-Initiator-Flag', 'Enumerated'};
avp_name(889, 10415) -> {'Message-Body', 'Grouped'};
avp_name(1213, 10415) -> {'Message-Class', 'Grouped'};
avp_name(1210, 10415) -> {'Message-ID', 'UTF8String'};
avp_name(1212, 10415) -> {'Message-Size', 'Unsigned32'};
avp_name(1211, 10415) -> {'Message-Type', 'Enumerated'};
avp_name(456, undefined) ->
    {'Multiple-Services-Credit-Control', 'Grouped'};
avp_name(455, undefined) ->
    {'Multiple-Services-Indicator', 'Enumerated'};
avp_name(862, 10415) ->
    {'Node-Functionality', 'Enumerated'};
avp_name(885, 10415) ->
    {'Number-Of-Participants', 'Unsigned32'};
avp_name(126, undefined) ->
    {'Operator-Name', 'OctetString'};
avp_name(839, 10415) ->
    {'Originating-IOI', 'UTF8String'};
avp_name(864, 10415) -> {'Originator', 'Enumerated'};
avp_name(886, 10415) ->
    {'Originator-Address', 'Grouped'};
avp_name(853, 10415) ->
    {'Outgoing-Trunk-Group-ID', 'UTF8String'};
avp_name(895, 10415) -> {'PDG-Address', 'Address'};
avp_name(896, 10415) ->
    {'PDG-Charging-Id', 'Unsigned32'};
avp_name(1227, 10415) -> {'PDP-Address', 'Address'};
avp_name(1247, 10415) ->
    {'PDP-Context-Type', 'Enumerated'};
avp_name(867, 10415) ->
    {'PS-Append-Free-Format-Data', 'Enumerated'};
avp_name(866, 10415) ->
    {'PS-Free-Format-Data', 'OctetString'};
avp_name(865, 10415) ->
    {'PS-Furnish-Charging-Information', 'Grouped'};
avp_name(874, 10415) -> {'PS-Information', 'Grouped'};
avp_name(887, 10415) ->
    {'Participants-Involved', 'UTF8String'};
avp_name(858, 10415) ->
    {'PoC-Controlling-Address', 'UTF8String'};
avp_name(859, 10415) ->
    {'PoC-Group-Name', 'UTF8String'};
avp_name(879, 10415) -> {'PoC-Information', 'Grouped'};
avp_name(883, 10415) ->
    {'PoC-Server-Role', 'Enumerated'};
avp_name(1229, 10415) ->
    {'PoC-Session-Id', 'UTF8String'};
avp_name(884, 10415) ->
    {'PoC-Session-Type', 'Enumerated'};
avp_name(1245, 10415) ->
    {'Positioning-Data', 'UTF8String'};
avp_name(1209, 10415) -> {'Priority', 'Enumerated'};
avp_name(881, 10415) ->
    {'Quota-Consumption-Time', 'Unsigned32'};
avp_name(871, 10415) ->
    {'Quota-Holding-Time', 'Unsigned32'};
avp_name(909, 10415) -> {'RAI', 'UTF8String'};
avp_name(432, undefined) ->
    {'Rating-Group', 'Unsigned32'};
avp_name(1222, 10415) ->
    {'Read-Reply-Report-Requested', 'Enumerated'};
avp_name(1201, 10415) ->
    {'Recipient-Address', 'Grouped'};
avp_name(433, undefined) ->
    {'Redirect-Address-Type', 'Enumerated'};
avp_name(434, undefined) ->
    {'Redirect-Server', 'Grouped'};
avp_name(435, undefined) ->
    {'Redirect-Server-Address', 'UTF8String'};
avp_name(1223, 10415) ->
    {'Reply-Applic-ID', 'UTF8String'};
avp_name(872, 10415) ->
    {'Reporting-Reason', 'Enumerated'};
avp_name(436, undefined) ->
    {'Requested-Action', 'Enumerated'};
avp_name(1251, 10415) ->
    {'Requested-Party-Address', 'UTF8String'};
avp_name(437, undefined) ->
    {'Requested-Service-Unit', 'Grouped'};
avp_name(901, 10415) ->
    {'Required-MBMS-Bearer-Capabilities', 'UTF8String'};
avp_name(438, undefined) ->
    {'Restriction-Filter-Rule', 'IPFilterRule'};
avp_name(829, 10415) -> {'Role-Of-Node', 'Enumerated'};
avp_name(843, 10415) ->
    {'SDP-Media-Component', 'Grouped'};
avp_name(845, 10415) ->
    {'SDP-Media-Description', 'UTF8String'};
avp_name(844, 10415) ->
    {'SDP-Media-Name', 'UTF8String'};
avp_name(842, 10415) ->
    {'SDP-Session-Description', 'UTF8String'};
avp_name(1228, 10415) -> {'SGSN-Address', 'Address'};
avp_name(824, 10415) -> {'SIP-Method', 'UTF8String'};
avp_name(834, 10415) ->
    {'SIP-Request-Timestamp', 'Time'};
avp_name(835, 10415) ->
    {'SIP-Response-Timestamp', 'Time'};
avp_name(848, 10415) ->
    {'Served-Party-IP-Address', 'Address'};
avp_name(603, 10415) ->
    {'Server-Capabilities', 'Grouped'};
avp_name(461, undefined) ->
    {'Service-Context-Id', 'UTF8String'};
avp_name(855, 10415) -> {'Service-Id', 'UTF8String'};
avp_name(439, undefined) ->
    {'Service-Identifier', 'Unsigned32'};
avp_name(873, 10415) ->
    {'Service-Information', 'Grouped'};
avp_name(440, undefined) ->
    {'Service-Parameter-Info', 'Grouped'};
avp_name(441, undefined) ->
    {'Service-Parameter-Type', 'Unsigned32'};
avp_name(442, undefined) ->
    {'Service-Parameter-Value', 'OctetString'};
avp_name(863, 10415) ->
    {'Service-Specific-Data', 'UTF8String'};
avp_name(1202, 10415) -> {'Submission-Time', 'Time'};
avp_name(443, undefined) ->
    {'Subscription-Id', 'Grouped'};
avp_name(444, undefined) ->
    {'Subscription-Id-Data', 'UTF8String'};
avp_name(450, undefined) ->
    {'Subscription-Id-Type', 'Enumerated'};
avp_name(900, 10415) -> {'TMGI', 'OctetString'};
avp_name(1255, 10415) ->
    {'Talk-Burst-Exchange', 'Grouped'};
avp_name(452, undefined) ->
    {'Tariff-Change-Usage', 'Enumerated'};
avp_name(451, undefined) ->
    {'Tariff-Time-Change', 'Time'};
avp_name(840, 10415) ->
    {'Terminating-IOI', 'UTF8String'};
avp_name(868, 10415) ->
    {'Time-Quota-Threshold', 'Unsigned32'};
avp_name(833, 10415) -> {'Time-Stamps', 'Grouped'};
avp_name(1215, 10415) -> {'Token-Text', 'UTF8String'};
avp_name(1264, 10415) -> {'Trigger', 'Grouped'};
avp_name(870, 10415) -> {'Trigger-Type', 'Enumerated'};
avp_name(851, 10415) -> {'Trunk-Group-ID', 'Grouped'};
avp_name(1204, 10415) -> {'Type-Number', 'Enumerated'};
avp_name(1226, 10415) ->
    {'Unit-Quota-Threshold', 'Unsigned32'};
avp_name(445, undefined) -> {'Unit-Value', 'Grouped'};
avp_name(446, undefined) ->
    {'Used-Service-Unit', 'Grouped'};
avp_name(458, undefined) ->
    {'User-Equipment-Info', 'Grouped'};
avp_name(459, undefined) ->
    {'User-Equipment-Info-Type', 'Enumerated'};
avp_name(460, undefined) ->
    {'User-Equipment-Info-Value', 'OctetString'};
avp_name(830, 10415) ->
    {'User-Session-ID', 'UTF8String'};
avp_name(1102, 10415) -> {'VAS-Id', 'UTF8String'};
avp_name(1101, 10415) -> {'VASP-Id', 'UTF8String'};
avp_name(448, undefined) ->
    {'Validity-Time', 'Unsigned32'};
avp_name(447, undefined) ->
    {'Value-Digits', 'Integer64'};
avp_name(869, 10415) ->
    {'Volume-Quota-Threshold', 'Unsigned32'};
avp_name(890, 10415) -> {'WAG-Address', 'Address'};
avp_name(891, 10415) -> {'WAG-PLMN-Id', 'OctetString'};
avp_name(875, 10415) -> {'WLAN-Information', 'Grouped'};
avp_name(892, 10415) ->
    {'WLAN-Radio-Container', 'Grouped'};
avp_name(1246, 10415) ->
    {'WLAN-Session-Id', 'UTF8String'};
avp_name(893, 10415) ->
    {'WLAN-Technology', 'Unsigned32'};
avp_name(894, 10415) ->
    {'WLAN-UE-Local-IPAddress', 'Address'};
avp_name(483, undefined) ->
    {'Accounting-Realtime-Required', 'Enumerated'};
avp_name(485, undefined) ->
    {'Accounting-Record-Number', 'Unsigned32'};
avp_name(480, undefined) ->
    {'Accounting-Record-Type', 'Enumerated'};
avp_name(287, undefined) ->
    {'Accounting-Sub-Session-Id', 'Unsigned64'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(85, undefined) ->
    {'Acct-Interim-Interval', 'Unsigned32'};
avp_name(50, undefined) ->
    {'Acct-Multi-Session-Id', 'UTF8String'};
avp_name(44, undefined) ->
    {'Acct-Session-Id', 'OctetString'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(276, undefined) ->
    {'Auth-Grace-Period', 'Unsigned32'};
avp_name(274, undefined) ->
    {'Auth-Request-Type', 'Enumerated'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(291, undefined) ->
    {'Authorization-Lifetime', 'Unsigned32'};
avp_name(25, undefined) -> {'Class', 'OctetString'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(273, undefined) ->
    {'Disconnect-Cause', 'Enumerated'};
avp_name(300, undefined) -> {'E2E-Sequence', 'Grouped'};
avp_name(281, undefined) ->
    {'Error-Message', 'UTF8String'};
avp_name(294, undefined) ->
    {'Error-Reporting-Host', 'DiameterIdentity'};
avp_name(55, undefined) -> {'Event-Timestamp', 'Time'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(298, undefined) ->
    {'Experimental-Result-Code', 'Unsigned32'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(267, undefined) ->
    {'Firmware-Revision', 'Unsigned32'};
avp_name(257, undefined) ->
    {'Host-IP-Address', 'Address'};
avp_name(299, undefined) ->
    {'Inband-Security-Id', 'Unsigned32'};
avp_name(272, undefined) ->
    {'Multi-Round-Time-Out', 'Unsigned32'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(278, undefined) ->
    {'Origin-State-Id', 'Unsigned32'};
avp_name(269, undefined) ->
    {'Product-Name', 'UTF8String'};
avp_name(280, undefined) ->
    {'Proxy-Host', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(33, undefined) ->
    {'Proxy-State', 'OctetString'};
avp_name(285, undefined) ->
    {'Re-Auth-Request-Type', 'Enumerated'};
avp_name(292, undefined) ->
    {'Redirect-Host', 'DiameterURI'};
avp_name(261, undefined) ->
    {'Redirect-Host-Usage', 'Enumerated'};
avp_name(262, undefined) ->
    {'Redirect-Max-Cache-Time', 'Unsigned32'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(270, undefined) ->
    {'Session-Binding', 'Unsigned32'};
avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(271, undefined) ->
    {'Session-Server-Failover', 'Enumerated'};
avp_name(27, undefined) ->
    {'Session-Timeout', 'Unsigned32'};
avp_name(265, undefined) ->
    {'Supported-Vendor-Id', 'Unsigned32'};
avp_name(295, undefined) ->
    {'Termination-Cause', 'Enumerated'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(_, _) -> 'AVP'.

avp_arity('CCR', 'Session-Id') -> 1;
avp_arity('CCR', 'Origin-Host') -> 1;
avp_arity('CCR', 'Origin-Realm') -> 1;
avp_arity('CCR', 'Destination-Realm') -> 1;
avp_arity('CCR', 'Auth-Application-Id') -> 1;
avp_arity('CCR', 'Service-Context-Id') -> 1;
avp_arity('CCR', 'CC-Request-Type') -> 1;
avp_arity('CCR', 'CC-Request-Number') -> 1;
avp_arity('CCR', 'Destination-Host') -> {0, 1};
avp_arity('CCR', 'User-Name') -> {0, 1};
avp_arity('CCR', 'CC-Sub-Session-Id') -> {0, 1};
avp_arity('CCR', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('CCR', 'Origin-State-Id') -> {0, 1};
avp_arity('CCR', 'Event-Timestamp') -> {0, 1};
avp_arity('CCR', 'Subscription-Id') -> {0, '*'};
avp_arity('CCR', 'Service-Identifier') -> {0, 1};
avp_arity('CCR', 'Termination-Cause') -> {0, 1};
avp_arity('CCR', 'Requested-Service-Unit') -> {0, 1};
avp_arity('CCR', 'Requested-Action') -> {0, 1};
avp_arity('CCR', 'Used-Service-Unit') -> {0, '*'};
avp_arity('CCR', 'Multiple-Services-Indicator') ->
    {0, 1};
avp_arity('CCR', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCR', 'Service-Parameter-Info') -> {0, '*'};
avp_arity('CCR', 'CC-Correlation-Id') -> {0, 1};
avp_arity('CCR', 'User-Equipment-Info') -> {0, 1};
avp_arity('CCR', 'Proxy-Info') -> {0, '*'};
avp_arity('CCR', 'Route-Record') -> {0, '*'};
avp_arity('CCR', 'Service-Information') -> {0, 1};
avp_arity('CCR', 'AVP') -> {0, '*'};
avp_arity('CCA', 'Session-Id') -> 1;
avp_arity('CCA', 'Result-Code') -> 1;
avp_arity('CCA', 'Origin-Host') -> 1;
avp_arity('CCA', 'Origin-Realm') -> 1;
avp_arity('CCA', 'Auth-Application-Id') -> 1;
avp_arity('CCA', 'CC-Request-Type') -> 1;
avp_arity('CCA', 'CC-Request-Number') -> 1;
avp_arity('CCA', 'User-Name') -> {0, 1};
avp_arity('CCA', 'CC-Session-Failover') -> {0, 1};
avp_arity('CCA', 'CC-Sub-Session-Id') -> {0, 1};
avp_arity('CCA', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('CCA', 'Origin-State-Id') -> {0, 1};
avp_arity('CCA', 'Event-Timestamp') -> {0, 1};
avp_arity('CCA', 'Granted-Service-Unit') -> {0, 1};
avp_arity('CCA', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCA', 'Cost-Information') -> {0, 1};
avp_arity('CCA', 'Final-Unit-Indication') -> {0, 1};
avp_arity('CCA', 'Check-Balance-Result') -> {0, 1};
avp_arity('CCA', 'Credit-Control-Failure-Handling') ->
    {0, 1};
avp_arity('CCA', 'Direct-Debiting-Failure-Handling') ->
    {0, 1};
avp_arity('CCA', 'Validity-Time') -> {0, 1};
avp_arity('CCA', 'Redirect-Host') -> {0, '*'};
avp_arity('CCA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('CCA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('CCA', 'Proxy-Info') -> {0, '*'};
avp_arity('CCA', 'Route-Record') -> {0, '*'};
avp_arity('CCA', 'Failed-AVP') -> {0, '*'};
avp_arity('CCA', 'Service-Information') -> {0, 1};
avp_arity('CCA', 'AVP') -> {0, '*'};
avp_arity('Cost-Information', 'Unit-Value') -> 1;
avp_arity('Cost-Information', 'Currency-Code') -> 1;
avp_arity('Cost-Information', 'Cost-Unit') -> {0, 1};
avp_arity('Unit-Value', 'Value-Digits') -> 1;
avp_arity('Unit-Value', 'Exponent') -> {0, 1};
avp_arity('Granted-Service-Unit',
	  'Tariff-Time-Change') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Money') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('Requested-Service-Unit', 'CC-Time') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'CC-Money') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Total-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Input-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Output-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('Used-Service-Unit', 'Tariff-Change-Usage') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Used-Service-Unit', 'CC-Money') -> {0, 1};
avp_arity('Used-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('CC-Money', 'Unit-Value') -> 1;
avp_arity('CC-Money', 'Currency-Code') -> {0, 1};
avp_arity('G-S-U-Pool-Reference',
	  'G-S-U-Pool-Identifier') ->
    1;
avp_arity('G-S-U-Pool-Reference', 'CC-Unit-Type') -> 1;
avp_arity('G-S-U-Pool-Reference', 'Unit-Value') -> 1;
avp_arity('Final-Unit-Indication',
	  'Final-Unit-Action') ->
    1;
avp_arity('Final-Unit-Indication',
	  'Restriction-Filter-Rule') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Filter-Id') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Redirect-Server') ->
    {0, 1};
avp_arity('Redirect-Server', 'Redirect-Address-Type') ->
    1;
avp_arity('Redirect-Server',
	  'Redirect-Server-Address') ->
    1;
avp_arity('Service-Parameter-Info',
	  'Service-Parameter-Type') ->
    1;
avp_arity('Service-Parameter-Info',
	  'Service-Parameter-Value') ->
    1;
avp_arity('Subscription-Id', 'Subscription-Id-Type') ->
    1;
avp_arity('Subscription-Id', 'Subscription-Id-Data') ->
    1;
avp_arity('User-Equipment-Info',
	  'User-Equipment-Info-Type') ->
    1;
avp_arity('User-Equipment-Info',
	  'User-Equipment-Info-Value') ->
    1;
avp_arity('Multiple-Services-Credit-Control',
	  'Granted-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Requested-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Used-Service-Unit') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Tariff-Change-Usage') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Service-Identifier') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Rating-Group') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'G-S-U-Pool-Reference') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Validity-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Result-Code') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Final-Unit-Indication') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Time-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Volume-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Unit-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Quota-Holding-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Quota-Consumption-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Reporting-Reason') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Trigger') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'PS-Furnish-Charging-Information') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control', 'AVP') ->
    {0, '*'};
avp_arity('Additional-Content-Information',
	  'Type-Number') ->
    {0, 1};
avp_arity('Additional-Content-Information',
	  'Additional-Type-Information') ->
    {0, 1};
avp_arity('Additional-Content-Information',
	  'Content-Size') ->
    {0, 1};
avp_arity('Address-Domain', 'Domain-Name') -> {0, 1};
avp_arity('Address-Domain', '3GPP-IMSI-MCC-MNC') ->
    {0, 1};
avp_arity('Application-Server-Information',
	  'Application-Server') ->
    {0, 1};
avp_arity('Application-Server-Information',
	  'Application-provided-called-party-address') ->
    {0, '*'};
avp_arity('Event-Type', 'SIP-Method') -> {0, 1};
avp_arity('Event-Type', 'Event') -> {0, 1};
avp_arity('Event-Type', 'Expires') -> {0, 1};
avp_arity('IMS-Information', 'Node-Functionality') -> 1;
avp_arity('IMS-Information', 'Event-Type') -> {0, 1};
avp_arity('IMS-Information', 'Role-Of-Node') -> {0, 1};
avp_arity('IMS-Information', 'User-Session-ID') ->
    {0, 1};
avp_arity('IMS-Information', 'Calling-Party-Address') ->
    {0, '*'};
avp_arity('IMS-Information', 'Called-Party-Address') ->
    {0, 1};
avp_arity('IMS-Information',
	  'Called-Asserted-Identity') ->
    {0, '*'};
avp_arity('IMS-Information',
	  'Requested-Party-Address') ->
    {0, 1};
avp_arity('IMS-Information', 'Associated-URI') ->
    {0, '*'};
avp_arity('IMS-Information', 'Time-Stamps') -> {0, 1};
avp_arity('IMS-Information',
	  'Application-Server-Information') ->
    {0, '*'};
avp_arity('IMS-Information',
	  'Inter-Operator-Identifier') ->
    {0, '*'};
avp_arity('IMS-Information',
	  'IMS-Charging-Identifier') ->
    {0, 1};
avp_arity('IMS-Information',
	  'SDP-Session-Description') ->
    {0, '*'};
avp_arity('IMS-Information', 'SDP-Media-Component') ->
    {0, '*'};
avp_arity('IMS-Information',
	  'Served-Party-IP-Address') ->
    {0, 1};
avp_arity('IMS-Information', 'Server-Capabilities') ->
    {0, 1};
avp_arity('IMS-Information', 'Trunk-Group-ID') ->
    {0, 1};
avp_arity('IMS-Information', 'Bearer-Service') ->
    {0, 1};
avp_arity('IMS-Information', 'Service-Id') -> {0, 1};
avp_arity('IMS-Information', 'Service-Specific-Data') ->
    {0, 1};
avp_arity('IMS-Information', 'Message-Body') ->
    {0, '*'};
avp_arity('IMS-Information', 'Cause-Code') -> {0, 1};
avp_arity('Inter-Operator-Identifier',
	  'Originating-IOI') ->
    {0, 1};
avp_arity('Inter-Operator-Identifier',
	  'Terminating-IOI') ->
    {0, 1};
avp_arity('LCS-Client-ID', 'LCS-Client-Type') -> {0, 1};
avp_arity('LCS-Client-ID', 'LCS-Client-External-ID') ->
    {0, 1};
avp_arity('LCS-Client-ID', 'LCS-Client-Dialed-By-MS') ->
    {0, 1};
avp_arity('LCS-Client-ID', 'LCS-Client-Name') -> {0, 1};
avp_arity('LCS-Client-ID', 'LCS-APN') -> {0, 1};
avp_arity('LCS-Client-ID', 'LCS-Requestor-ID') ->
    {0, 1};
avp_arity('LCS-Client-Name',
	  'LCS-Data-Coding-Scheme') ->
    {0, 1};
avp_arity('LCS-Client-Name', 'LCS-Name-String') ->
    {0, 1};
avp_arity('LCS-Client-Name', 'LCS-Format-Indicator') ->
    {0, 1};
avp_arity('LCS-Information', 'LCS-Client-ID') -> {0, 1};
avp_arity('LCS-Information', 'Location-Type') -> {0, 1};
avp_arity('LCS-Information', 'Location-Estimate') ->
    {0, 1};
avp_arity('LCS-Information', 'Positioning-Data') ->
    {0, 1};
avp_arity('LCS-Information', '3GPP-IMSI') -> {0, 1};
avp_arity('LCS-Information', 'MSISDN') -> {0, 1};
avp_arity('LCS-Requestor-ID',
	  'LCS-Data-Coding-Scheme') ->
    {0, 1};
avp_arity('LCS-Requestor-ID',
	  'LCS-Requestor-ID-String') ->
    {0, 1};
avp_arity('Location-Type', 'Location-Estimate-Type') ->
    {0, 1};
avp_arity('Location-Type',
	  'Deferred-Location-Event-Type') ->
    {0, 1};
avp_arity('MBMS-Information', 'TMGI') -> {0, 1};
avp_arity('MBMS-Information', 'MBMS-Service-Type') ->
    {0, 1};
avp_arity('MBMS-Information',
	  'MBMS-User-Service-Type') ->
    {0, 1};
avp_arity('MBMS-Information',
	  'File-Repair-Supported') ->
    {0, 1};
avp_arity('MBMS-Information',
	  'Required-MBMS-Bearer-Capabilities') ->
    {0, 1};
avp_arity('MBMS-Information', 'MBMS-2G-3G-Indicator') ->
    {0, 1};
avp_arity('MBMS-Information', 'RAI') -> {0, 1};
avp_arity('MBMS-Information', 'MBMS-Service-Area') ->
    {0, '*'};
avp_arity('MBMS-Information',
	  'MBMS-Session-Identity') ->
    {0, 1};
avp_arity('Message-Body', 'Content-Type') -> 1;
avp_arity('Message-Body', 'Content-Length') -> 1;
avp_arity('Message-Body', 'Content-Disposition') ->
    {0, 1};
avp_arity('Message-Body', 'Originator') -> {0, 1};
avp_arity('Message-Class', 'Class-Identifier') ->
    {0, 1};
avp_arity('Message-Class', 'Token-Text') -> {0, 1};
avp_arity('MM-Content-Type', 'Type-Number') -> {0, 1};
avp_arity('MM-Content-Type',
	  'Additional-Type-Information') ->
    {0, 1};
avp_arity('MM-Content-Type', 'Content-Size') -> {0, 1};
avp_arity('MM-Content-Type',
	  'Additional-Content-Information') ->
    {0, '*'};
avp_arity('MMS-Information', 'Originator-Address') ->
    {0, 1};
avp_arity('MMS-Information', 'Recipient-Address') ->
    {0, '*'};
avp_arity('MMS-Information', 'Submission-Time') ->
    {0, 1};
avp_arity('MMS-Information', 'MM-Content-Type') ->
    {0, 1};
avp_arity('MMS-Information', 'Priority') -> {0, 1};
avp_arity('MMS-Information', 'Message-ID') -> {0, 1};
avp_arity('MMS-Information', 'Message-Type') -> {0, 1};
avp_arity('MMS-Information', 'Message-Size') -> {0, 1};
avp_arity('MMS-Information', 'Message-Class') -> {0, 1};
avp_arity('MMS-Information',
	  'Delivery-Report-Requested') ->
    {0, 1};
avp_arity('MMS-Information',
	  'Read-Reply-Report-Requested') ->
    {0, 1};
avp_arity('MMS-Information',
	  'MMBox-Storage-Requested') ->
    {0, 1};
avp_arity('MMS-Information', 'Applic-ID') -> {0, 1};
avp_arity('MMS-Information', 'Reply-Applic-ID') ->
    {0, 1};
avp_arity('MMS-Information', 'Aux-Applic-Info') ->
    {0, 1};
avp_arity('MMS-Information', 'Content-Class') -> {0, 1};
avp_arity('MMS-Information', 'DRM-Content') -> {0, 1};
avp_arity('MMS-Information', 'Adaptations') -> {0, 1};
avp_arity('MMS-Information', 'VASP-Id') -> {0, 1};
avp_arity('MMS-Information', 'VAS-Id') -> {0, 1};
avp_arity('Originator-Address', 'Address-Type') ->
    {0, 1};
avp_arity('Originator-Address', 'Address-Data') ->
    {0, 1};
avp_arity('Originator-Address', 'Address-Domain') ->
    {0, 1};
avp_arity('PoC-Information', 'PoC-Server-Role') ->
    {0, 1};
avp_arity('PoC-Information', 'PoC-Session-Type') ->
    {0, 1};
avp_arity('PoC-Information',
	  'Number-Of-Participants') ->
    {0, 1};
avp_arity('PoC-Information', 'Participants-Involved') ->
    {0, '*'};
avp_arity('PoC-Information', 'Talk-Burst-Exchange') ->
    {0, '*'};
avp_arity('PoC-Information',
	  'PoC-Controlling-Address') ->
    {0, 1};
avp_arity('PoC-Information', 'PoC-Group-Name') ->
    {0, 1};
avp_arity('PoC-Information', 'PoC-Session-Id') ->
    {0, 1};
avp_arity('PoC-Information', 'Charged-Party') -> {0, 1};
avp_arity('PS-Furnish-Charging-Information',
	  '3GPP-Charging-Id') ->
    1;
avp_arity('PS-Furnish-Charging-Information',
	  'PS-Free-Format-Data') ->
    1;
avp_arity('PS-Furnish-Charging-Information',
	  'PS-Append-Free-Format-Data') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-Charging-Id') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-PDP-Type') -> {0, 1};
avp_arity('PS-Information', 'PDP-Address') -> {0, 1};
avp_arity('PS-Information',
	  '3GPP-GPRS-Negotiated-QoS-Profile') ->
    {0, 1};
avp_arity('PS-Information', 'SGSN-Address') -> {0, 1};
avp_arity('PS-Information', 'GGSN-Address') -> {0, 1};
avp_arity('PS-Information', 'CG-Address') -> {0, 1};
avp_arity('PS-Information', '3GPP-IMSI-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-GGSN-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-NSAPI') -> {0, 1};
avp_arity('PS-Information', 'Called-Station-Id') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-Session-Stop-Indicator') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-Selection-Mode') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-Charging-Characteristics') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-SGSN-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-MS-TimeZone') ->
    {0, 1};
avp_arity('PS-Information',
	  'Charging-Rule-Base-Name') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-User-Location-Info') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-RAT-Type') -> {0, 1};
avp_arity('PS-Information',
	  'PS-Furnish-Charging-Information') ->
    {0, 1};
avp_arity('PS-Information', 'PDP-Context-Type') ->
    {0, 1};
avp_arity('Recipient-Address', 'Address-Type') ->
    {0, 1};
avp_arity('Recipient-Address', 'Address-Data') ->
    {0, 1};
avp_arity('Recipient-Address', 'Address-Domain') ->
    {0, 1};
avp_arity('Recipient-Address', 'Addressee-Type') ->
    {0, 1};
avp_arity('SDP-Media-Component', 'SDP-Media-Name') ->
    {0, 1};
avp_arity('SDP-Media-Component',
	  'SDP-Media-Description') ->
    {0, '*'};
avp_arity('SDP-Media-Component',
	  'Media-Initiator-Flag') ->
    {0, 1};
avp_arity('SDP-Media-Component', 'Authorized-QoS') ->
    {0, 1};
avp_arity('SDP-Media-Component', '3GPP-Charging-Id') ->
    {0, 1};
avp_arity('Service-Information', 'PS-Information') ->
    {0, 1};
avp_arity('Service-Information', 'WLAN-Information') ->
    {0, 1};
avp_arity('Service-Information', 'IMS-Information') ->
    {0, 1};
avp_arity('Service-Information', 'MMS-Information') ->
    {0, 1};
avp_arity('Service-Information', 'LCS-Information') ->
    {0, 1};
avp_arity('Service-Information', 'PoC-Information') ->
    {0, 1};
avp_arity('Service-Information', 'MBMS-Information') ->
    {0, 1};
avp_arity('Time-Stamps', 'SIP-Request-Timestamp') ->
    {0, 1};
avp_arity('Time-Stamps', 'SIP-Response-Timestamp') ->
    {0, 1};
avp_arity('Trigger', 'Trigger-Type') -> {0, '*'};
avp_arity('WLAN-Information', 'WLAN-Session-Id') ->
    {0, 1};
avp_arity('WLAN-Information', 'PDG-Address') -> {0, 1};
avp_arity('WLAN-Information', 'PDG-Charging-Id') ->
    {0, 1};
avp_arity('WLAN-Information', 'WAG-Address') -> {0, 1};
avp_arity('WLAN-Information', 'WAG-PLMN-Id') -> {0, 1};
avp_arity('WLAN-Information', 'WLAN-Radio-Container') ->
    {0, 1};
avp_arity('WLAN-Information',
	  'WLAN-UE-Local-IPAddress') ->
    {0, 1};
avp_arity('WLAN-Radio-Container', 'Operator-Name') ->
    {0, 1};
avp_arity('WLAN-Radio-Container', 'Location-Type') ->
    {0, 1};
avp_arity('WLAN-Radio-Container',
	  'Location-Information') ->
    {0, 1};
avp_arity('WLAN-Radio-Container', 'WLAN-Technology') ->
    {0, 1};
avp_arity('Trunk-Group-ID',
	  'Incoming-Trunk-Group-ID') ->
    {0, 1};
avp_arity('Trunk-Group-ID',
	  'Outgoing-Trunk-Group-ID') ->
    {0, 1};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
	  'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    {1, '*'};
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity('E2E-Sequence', 'AVP') -> {2, '*'};
avp_arity(_, _) -> 0.

avp_header('3GPP-Charging-Characteristics') ->
    {13, 192, 10415};
avp_header('3GPP-Charging-Id') -> {2, 192, 10415};
avp_header('3GPP-GGSN-MCC-MNC') -> {9, 192, 10415};
avp_header('3GPP-GPRS-Negotiated-QoS-Profile') ->
    {5, 192, 10415};
avp_header('3GPP-IMSI') -> {1, 192, 10415};
avp_header('3GPP-IMSI-MCC-MNC') -> {8, 192, 10415};
avp_header('3GPP-MS-TimeZone') -> {23, 192, 10415};
avp_header('3GPP-NSAPI') -> {10, 192, 10415};
avp_header('3GPP-PDP-Type') -> {3, 192, 10415};
avp_header('3GPP-RAT-Type') -> {21, 192, 10415};
avp_header('3GPP-SGSN-MCC-MNC') -> {18, 192, 10415};
avp_header('3GPP-Selection-Mode') -> {12, 192, 10415};
avp_header('3GPP-Session-Stop-Indicator') ->
    {11, 192, 10415};
avp_header('3GPP-User-Location-Info') ->
    {22, 192, 10415};
avp_header('Adaptations') -> {1217, 192, 10415};
avp_header('Additional-Content-Information') ->
    {1207, 192, 10415};
avp_header('Additional-Type-Information') ->
    {1205, 192, 10415};
avp_header('Address-Data') -> {897, 192, 10415};
avp_header('Address-Domain') -> {898, 192, 10415};
avp_header('Address-Type') -> {899, 192, 10415};
avp_header('Addressee-Type') -> {1208, 192, 10415};
avp_header('Applic-ID') -> {1218, 192, 10415};
avp_header('Application-Server') -> {836, 192, 10415};
avp_header('Application-Server-Information') ->
    {850, 192, 10415};
avp_header('Application-provided-called-party-address') ->
    {837, 192, 10415};
avp_header('Associated-URI') -> {856, 192, 10415};
avp_header('Authorized-QoS') -> {849, 192, 10415};
avp_header('Aux-Applic-Info') -> {1219, 192, 10415};
avp_header('Bearer-Service') -> {854, 192, 10415};
avp_header('CC-Correlation-Id') -> {411, 0, undefined};
avp_header('CC-Input-Octets') -> {412, 64, undefined};
avp_header('CC-Money') -> {413, 64, undefined};
avp_header('CC-Output-Octets') -> {414, 64, undefined};
avp_header('CC-Request-Number') -> {415, 64, undefined};
avp_header('CC-Request-Type') -> {416, 64, undefined};
avp_header('CC-Service-Specific-Units') ->
    {417, 64, undefined};
avp_header('CC-Session-Failover') ->
    {418, 64, undefined};
avp_header('CC-Sub-Session-Id') -> {419, 64, undefined};
avp_header('CC-Time') -> {420, 64, undefined};
avp_header('CC-Total-Octets') -> {421, 64, undefined};
avp_header('CC-Unit-Type') -> {454, 64, undefined};
avp_header('CG-Address') -> {846, 192, 10415};
avp_header('Called-Asserted-Identity') ->
    {1250, 192, 10415};
avp_header('Called-Party-Address') -> {832, 192, 10415};
avp_header('Called-Station-Id') -> {30, 64, undefined};
avp_header('Calling-Party-Address') ->
    {831, 192, 10415};
avp_header('Cause-Code') -> {861, 192, 10415};
avp_header('Charged-Party') -> {857, 192, 10415};
avp_header('Charging-Rule-Base-Name') ->
    {1004, 192, 10415};
avp_header('Check-Balance-Result') ->
    {422, 64, undefined};
avp_header('Class-Identifier') -> {1214, 192, 10415};
avp_header('Content-Class') -> {1220, 192, 10415};
avp_header('Content-Disposition') -> {828, 192, 10415};
avp_header('Content-Length') -> {827, 192, 10415};
avp_header('Content-Size') -> {1206, 192, 10415};
avp_header('Content-Type') -> {826, 192, 10415};
avp_header('Cost-Information') -> {423, 64, undefined};
avp_header('Cost-Unit') -> {424, 64, undefined};
avp_header('Credit-Control') -> {426, 64, undefined};
avp_header('Credit-Control-Failure-Handling') ->
    {427, 64, undefined};
avp_header('Currency-Code') -> {425, 64, undefined};
avp_header('DRM-Content') -> {1221, 192, 10415};
avp_header('Deferred-Location-Event-Type') ->
    {1230, 192, 10415};
avp_header('Delivery-Report-Requested') ->
    {1216, 192, 10415};
avp_header('Direct-Debiting-Failure-Handling') ->
    {428, 64, undefined};
avp_header('Domain-Name') -> {1200, 192, 10415};
avp_header('Event') -> {825, 192, 10415};
avp_header('Event-Type') -> {823, 192, 10415};
avp_header('Expires') -> {888, 192, 10415};
avp_header('Exponent') -> {429, 64, undefined};
avp_header('File-Repair-Supported') ->
    {1224, 192, 10415};
avp_header('Filter-Id') -> {11, 64, undefined};
avp_header('Final-Unit-Action') -> {449, 64, undefined};
avp_header('Final-Unit-Indication') ->
    {430, 64, undefined};
avp_header('G-S-U-Pool-Identifier') ->
    {453, 64, undefined};
avp_header('G-S-U-Pool-Reference') ->
    {457, 64, undefined};
avp_header('GGSN-Address') -> {847, 192, 10415};
avp_header('Granted-Service-Unit') ->
    {431, 64, undefined};
avp_header('IMS-Charging-Identifier') ->
    {841, 192, 10415};
avp_header('IMS-Information') -> {876, 192, 10415};
avp_header('Incoming-Trunk-Group-ID') ->
    {852, 192, 10415};
avp_header('Inter-Operator-Identifier') ->
    {838, 192, 10415};
avp_header('LCS-APN') -> {1231, 192, 10415};
avp_header('LCS-Client-Dialed-By-MS') ->
    {1233, 192, 10415};
avp_header('LCS-Client-External-ID') ->
    {1234, 192, 10415};
avp_header('LCS-Client-ID') -> {1232, 192, 10415};
avp_header('LCS-Client-Name') -> {1235, 192, 10415};
avp_header('LCS-Client-Type') -> {1241, 192, 10415};
avp_header('LCS-Data-Coding-Scheme') ->
    {1236, 192, 10415};
avp_header('LCS-Format-Indicator') ->
    {1237, 192, 10415};
avp_header('LCS-Information') -> {878, 192, 10415};
avp_header('LCS-Name-String') -> {1238, 192, 10415};
avp_header('LCS-Requestor-ID') -> {1239, 192, 10415};
avp_header('LCS-Requestor-ID-String') ->
    {1240, 192, 10415};
avp_header('Location-Estimate') -> {1242, 192, 10415};
avp_header('Location-Estimate-Type') ->
    {1243, 192, 10415};
avp_header('Location-Information') ->
    {127, 0, undefined};
avp_header('Location-Type') -> {1244, 192, 10415};
avp_header('MBMS-2G-3G-Indicator') -> {907, 192, 10415};
avp_header('MBMS-Information') -> {880, 192, 10415};
avp_header('MBMS-Service-Area') -> {903, 192, 10415};
avp_header('MBMS-Service-Type') -> {906, 192, 10415};
avp_header('MBMS-Session-Identity') ->
    {908, 192, 10415};
avp_header('MBMS-User-Service-Type') ->
    {1225, 192, 10415};
avp_header('MM-Content-Type') -> {1203, 192, 10415};
avp_header('MMBox-Storage-Requested') ->
    {1248, 192, 10415};
avp_header('MMS-Information') -> {877, 192, 10415};
avp_header('MSISDN') -> {701, 192, 10415};
avp_header('Media-Initiator-Flag') -> {882, 192, 10415};
avp_header('Message-Body') -> {889, 192, 10415};
avp_header('Message-Class') -> {1213, 192, 10415};
avp_header('Message-ID') -> {1210, 192, 10415};
avp_header('Message-Size') -> {1212, 192, 10415};
avp_header('Message-Type') -> {1211, 192, 10415};
avp_header('Multiple-Services-Credit-Control') ->
    {456, 64, undefined};
avp_header('Multiple-Services-Indicator') ->
    {455, 64, undefined};
avp_header('Node-Functionality') -> {862, 192, 10415};
avp_header('Number-Of-Participants') ->
    {885, 192, 10415};
avp_header('Operator-Name') -> {126, 0, undefined};
avp_header('Originating-IOI') -> {839, 192, 10415};
avp_header('Originator') -> {864, 192, 10415};
avp_header('Originator-Address') -> {886, 192, 10415};
avp_header('Outgoing-Trunk-Group-ID') ->
    {853, 192, 10415};
avp_header('PDG-Address') -> {895, 192, 10415};
avp_header('PDG-Charging-Id') -> {896, 192, 10415};
avp_header('PDP-Address') -> {1227, 192, 10415};
avp_header('PDP-Context-Type') -> {1247, 192, 10415};
avp_header('PS-Append-Free-Format-Data') ->
    {867, 192, 10415};
avp_header('PS-Free-Format-Data') -> {866, 192, 10415};
avp_header('PS-Furnish-Charging-Information') ->
    {865, 192, 10415};
avp_header('PS-Information') -> {874, 192, 10415};
avp_header('Participants-Involved') ->
    {887, 192, 10415};
avp_header('PoC-Controlling-Address') ->
    {858, 192, 10415};
avp_header('PoC-Group-Name') -> {859, 192, 10415};
avp_header('PoC-Information') -> {879, 192, 10415};
avp_header('PoC-Server-Role') -> {883, 192, 10415};
avp_header('PoC-Session-Id') -> {1229, 192, 10415};
avp_header('PoC-Session-Type') -> {884, 192, 10415};
avp_header('Positioning-Data') -> {1245, 192, 10415};
avp_header('Priority') -> {1209, 192, 10415};
avp_header('Quota-Consumption-Time') ->
    {881, 192, 10415};
avp_header('Quota-Holding-Time') -> {871, 192, 10415};
avp_header('RAI') -> {909, 192, 10415};
avp_header('Rating-Group') -> {432, 64, undefined};
avp_header('Read-Reply-Report-Requested') ->
    {1222, 192, 10415};
avp_header('Recipient-Address') -> {1201, 192, 10415};
avp_header('Redirect-Address-Type') ->
    {433, 64, undefined};
avp_header('Redirect-Server') -> {434, 64, undefined};
avp_header('Redirect-Server-Address') ->
    {435, 64, undefined};
avp_header('Reply-Applic-ID') -> {1223, 192, 10415};
avp_header('Reporting-Reason') -> {872, 192, 10415};
avp_header('Requested-Action') -> {436, 64, undefined};
avp_header('Requested-Party-Address') ->
    {1251, 192, 10415};
avp_header('Requested-Service-Unit') ->
    {437, 64, undefined};
avp_header('Required-MBMS-Bearer-Capabilities') ->
    {901, 192, 10415};
avp_header('Restriction-Filter-Rule') ->
    {438, 64, undefined};
avp_header('Role-Of-Node') -> {829, 192, 10415};
avp_header('SDP-Media-Component') -> {843, 192, 10415};
avp_header('SDP-Media-Description') ->
    {845, 192, 10415};
avp_header('SDP-Media-Name') -> {844, 192, 10415};
avp_header('SDP-Session-Description') ->
    {842, 192, 10415};
avp_header('SGSN-Address') -> {1228, 192, 10415};
avp_header('SIP-Method') -> {824, 192, 10415};
avp_header('SIP-Request-Timestamp') ->
    {834, 192, 10415};
avp_header('SIP-Response-Timestamp') ->
    {835, 192, 10415};
avp_header('Served-Party-IP-Address') ->
    {848, 192, 10415};
avp_header('Server-Capabilities') -> {603, 192, 10415};
avp_header('Service-Context-Id') ->
    {461, 64, undefined};
avp_header('Service-Id') -> {855, 192, 10415};
avp_header('Service-Identifier') ->
    {439, 64, undefined};
avp_header('Service-Information') -> {873, 192, 10415};
avp_header('Service-Parameter-Info') ->
    {440, 0, undefined};
avp_header('Service-Parameter-Type') ->
    {441, 0, undefined};
avp_header('Service-Parameter-Value') ->
    {442, 0, undefined};
avp_header('Service-Specific-Data') ->
    {863, 192, 10415};
avp_header('Submission-Time') -> {1202, 192, 10415};
avp_header('Subscription-Id') -> {443, 64, undefined};
avp_header('Subscription-Id-Data') ->
    {444, 64, undefined};
avp_header('Subscription-Id-Type') ->
    {450, 64, undefined};
avp_header('TMGI') -> {900, 192, 10415};
avp_header('Talk-Burst-Exchange') -> {1255, 192, 10415};
avp_header('Tariff-Change-Usage') ->
    {452, 64, undefined};
avp_header('Tariff-Time-Change') ->
    {451, 64, undefined};
avp_header('Terminating-IOI') -> {840, 192, 10415};
avp_header('Time-Quota-Threshold') -> {868, 192, 10415};
avp_header('Time-Stamps') -> {833, 192, 10415};
avp_header('Token-Text') -> {1215, 192, 10415};
avp_header('Trigger') -> {1264, 192, 10415};
avp_header('Trigger-Type') -> {870, 192, 10415};
avp_header('Trunk-Group-ID') -> {851, 192, 10415};
avp_header('Type-Number') -> {1204, 192, 10415};
avp_header('Unit-Quota-Threshold') ->
    {1226, 192, 10415};
avp_header('Unit-Value') -> {445, 64, undefined};
avp_header('Used-Service-Unit') -> {446, 64, undefined};
avp_header('User-Equipment-Info') ->
    {458, 0, undefined};
avp_header('User-Equipment-Info-Type') ->
    {459, 0, undefined};
avp_header('User-Equipment-Info-Value') ->
    {460, 0, undefined};
avp_header('User-Session-ID') -> {830, 192, 10415};
avp_header('VAS-Id') -> {1102, 192, 10415};
avp_header('VASP-Id') -> {1101, 192, 10415};
avp_header('Validity-Time') -> {448, 64, undefined};
avp_header('Value-Digits') -> {447, 64, undefined};
avp_header('Volume-Quota-Threshold') ->
    {869, 192, 10415};
avp_header('WAG-Address') -> {890, 192, 10415};
avp_header('WAG-PLMN-Id') -> {891, 192, 10415};
avp_header('WLAN-Information') -> {875, 192, 10415};
avp_header('WLAN-Radio-Container') -> {892, 192, 10415};
avp_header('WLAN-Session-Id') -> {1246, 192, 10415};
avp_header('WLAN-Technology') -> {893, 192, 10415};
avp_header('WLAN-UE-Local-IPAddress') ->
    {894, 192, 10415};
avp_header('Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Realtime-Required');
avp_header('Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Number');
avp_header('Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Type');
avp_header('Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Sub-Session-Id');
avp_header('Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Application-Id');
avp_header('Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Interim-Interval');
avp_header('Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Multi-Session-Id');
avp_header('Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Session-Id');
avp_header('Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Application-Id');
avp_header('Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Grace-Period');
avp_header('Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Request-Type');
avp_header('Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Session-State');
avp_header('Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp_header('Authorization-Lifetime');
avp_header('Class') ->
    diameter_gen_base_rfc3588:avp_header('Class');
avp_header('Destination-Host') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Host');
avp_header('Destination-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Realm');
avp_header('Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Disconnect-Cause');
avp_header('E2E-Sequence') ->
    diameter_gen_base_rfc3588:avp_header('E2E-Sequence');
avp_header('Error-Message') ->
    diameter_gen_base_rfc3588:avp_header('Error-Message');
avp_header('Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp_header('Error-Reporting-Host');
avp_header('Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp_header('Event-Timestamp');
avp_header('Experimental-Result') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result');
avp_header('Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result-Code');
avp_header('Failed-AVP') ->
    diameter_gen_base_rfc3588:avp_header('Failed-AVP');
avp_header('Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp_header('Firmware-Revision');
avp_header('Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp_header('Host-IP-Address');
avp_header('Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp_header('Inband-Security-Id');
avp_header('Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp_header('Multi-Round-Time-Out');
avp_header('Origin-Host') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Host');
avp_header('Origin-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Realm');
avp_header('Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp_header('Origin-State-Id');
avp_header('Product-Name') ->
    diameter_gen_base_rfc3588:avp_header('Product-Name');
avp_header('Proxy-Host') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Host');
avp_header('Proxy-Info') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Info');
avp_header('Proxy-State') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-State');
avp_header('Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Re-Auth-Request-Type');
avp_header('Redirect-Host') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host');
avp_header('Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host-Usage');
avp_header('Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Max-Cache-Time');
avp_header('Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Result-Code');
avp_header('Route-Record') ->
    diameter_gen_base_rfc3588:avp_header('Route-Record');
avp_header('Session-Binding') ->
    diameter_gen_base_rfc3588:avp_header('Session-Binding');
avp_header('Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Session-Id');
avp_header('Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp_header('Session-Server-Failover');
avp_header('Session-Timeout') ->
    diameter_gen_base_rfc3588:avp_header('Session-Timeout');
avp_header('Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Supported-Vendor-Id');
avp_header('Termination-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Termination-Cause');
avp_header('User-Name') ->
    diameter_gen_base_rfc3588:avp_header('User-Name');
avp_header('Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Id');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Specific-Application-Id');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, '3GPP-Charging-Characteristics') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-Charging-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-GGSN-MCC-MNC') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-GPRS-Negotiated-QoS-Profile') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-IMSI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-IMSI-MCC-MNC') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-MS-TimeZone') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-NSAPI') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-PDP-Type') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-RAT-Type') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-SGSN-MCC-MNC') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-Selection-Mode') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-Session-Stop-Indicator') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-User-Location-Info') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Adaptations') ->
    enumerated_avp(T, 'Adaptations', Data);
avp(T, Data, 'Additional-Content-Information') ->
    grouped_avp(T, 'Additional-Content-Information', Data);
avp(T, Data, 'Additional-Type-Information') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Address-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Address-Domain') ->
    grouped_avp(T, 'Address-Domain', Data);
avp(T, Data, 'Address-Type') ->
    enumerated_avp(T, 'Address-Type', Data);
avp(T, Data, 'Addressee-Type') ->
    enumerated_avp(T, 'Addressee-Type', Data);
avp(T, Data, 'Applic-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Application-Server') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Application-Server-Information') ->
    grouped_avp(T, 'Application-Server-Information', Data);
avp(T, Data,
    'Application-provided-called-party-address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Associated-URI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Authorized-QoS') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Aux-Applic-Info') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Bearer-Service') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'CC-Correlation-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'CC-Input-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Money') ->
    grouped_avp(T, 'CC-Money', Data);
avp(T, Data, 'CC-Output-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Request-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'CC-Request-Type') ->
    enumerated_avp(T, 'CC-Request-Type', Data);
avp(T, Data, 'CC-Service-Specific-Units') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Session-Failover') ->
    enumerated_avp(T, 'CC-Session-Failover', Data);
avp(T, Data, 'CC-Sub-Session-Id') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'CC-Total-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Unit-Type') ->
    enumerated_avp(T, 'CC-Unit-Type', Data);
avp(T, Data, 'CG-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Called-Asserted-Identity') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Called-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Called-Station-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Calling-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Cause-Code') ->
    diameter_types:'Integer32'(T, Data);
avp(T, Data, 'Charged-Party') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Charging-Rule-Base-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Check-Balance-Result') ->
    enumerated_avp(T, 'Check-Balance-Result', Data);
avp(T, Data, 'Class-Identifier') ->
    enumerated_avp(T, 'Class-Identifier', Data);
avp(T, Data, 'Content-Class') ->
    enumerated_avp(T, 'Content-Class', Data);
avp(T, Data, 'Content-Disposition') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Content-Length') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Content-Size') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Content-Type') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Cost-Information') ->
    grouped_avp(T, 'Cost-Information', Data);
avp(T, Data, 'Cost-Unit') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Credit-Control') ->
    enumerated_avp(T, 'Credit-Control', Data);
avp(T, Data, 'Credit-Control-Failure-Handling') ->
    enumerated_avp(T, 'Credit-Control-Failure-Handling',
		   Data);
avp(T, Data, 'Currency-Code') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'DRM-Content') ->
    enumerated_avp(T, 'DRM-Content', Data);
avp(T, Data, 'Deferred-Location-Event-Type') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Delivery-Report-Requested') ->
    enumerated_avp(T, 'Delivery-Report-Requested', Data);
avp(T, Data, 'Direct-Debiting-Failure-Handling') ->
    enumerated_avp(T, 'Direct-Debiting-Failure-Handling',
		   Data);
avp(T, Data, 'Domain-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Event') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Event-Type') ->
    grouped_avp(T, 'Event-Type', Data);
avp(T, Data, 'Expires') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Exponent') ->
    diameter_types:'Integer32'(T, Data);
avp(T, Data, 'File-Repair-Supported') ->
    enumerated_avp(T, 'File-Repair-Supported', Data);
avp(T, Data, 'Filter-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Final-Unit-Action') ->
    enumerated_avp(T, 'Final-Unit-Action', Data);
avp(T, Data, 'Final-Unit-Indication') ->
    grouped_avp(T, 'Final-Unit-Indication', Data);
avp(T, Data, 'G-S-U-Pool-Identifier') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'G-S-U-Pool-Reference') ->
    grouped_avp(T, 'G-S-U-Pool-Reference', Data);
avp(T, Data, 'GGSN-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Granted-Service-Unit') ->
    grouped_avp(T, 'Granted-Service-Unit', Data);
avp(T, Data, 'IMS-Charging-Identifier') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'IMS-Information') ->
    grouped_avp(T, 'IMS-Information', Data);
avp(T, Data, 'Incoming-Trunk-Group-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Inter-Operator-Identifier') ->
    grouped_avp(T, 'Inter-Operator-Identifier', Data);
avp(T, Data, 'LCS-APN') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'LCS-Client-Dialed-By-MS') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'LCS-Client-External-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'LCS-Client-ID') ->
    grouped_avp(T, 'LCS-Client-ID', Data);
avp(T, Data, 'LCS-Client-Name') ->
    grouped_avp(T, 'LCS-Client-Name', Data);
avp(T, Data, 'LCS-Client-Type') ->
    enumerated_avp(T, 'LCS-Client-Type', Data);
avp(T, Data, 'LCS-Data-Coding-Scheme') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'LCS-Format-Indicator') ->
    enumerated_avp(T, 'LCS-Format-Indicator', Data);
avp(T, Data, 'LCS-Information') ->
    grouped_avp(T, 'LCS-Information', Data);
avp(T, Data, 'LCS-Name-String') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'LCS-Requestor-ID') ->
    grouped_avp(T, 'LCS-Requestor-ID', Data);
avp(T, Data, 'LCS-Requestor-ID-String') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Location-Estimate') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Location-Estimate-Type') ->
    enumerated_avp(T, 'Location-Estimate-Type', Data);
avp(T, Data, 'Location-Information') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Location-Type') ->
    grouped_avp(T, 'Location-Type', Data);
avp(T, Data, 'MBMS-2G-3G-Indicator') ->
    enumerated_avp(T, 'MBMS-2G-3G-Indicator', Data);
avp(T, Data, 'MBMS-Information') ->
    grouped_avp(T, 'MBMS-Information', Data);
avp(T, Data, 'MBMS-Service-Area') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'MBMS-Service-Type') ->
    enumerated_avp(T, 'MBMS-Service-Type', Data);
avp(T, Data, 'MBMS-Session-Identity') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'MBMS-User-Service-Type') ->
    enumerated_avp(T, 'MBMS-User-Service-Type', Data);
avp(T, Data, 'MM-Content-Type') ->
    grouped_avp(T, 'MM-Content-Type', Data);
avp(T, Data, 'MMBox-Storage-Requested') ->
    enumerated_avp(T, 'MMBox-Storage-Requested', Data);
avp(T, Data, 'MMS-Information') ->
    grouped_avp(T, 'MMS-Information', Data);
avp(T, Data, 'MSISDN') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Media-Initiator-Flag') ->
    enumerated_avp(T, 'Media-Initiator-Flag', Data);
avp(T, Data, 'Message-Body') ->
    grouped_avp(T, 'Message-Body', Data);
avp(T, Data, 'Message-Class') ->
    grouped_avp(T, 'Message-Class', Data);
avp(T, Data, 'Message-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Message-Size') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Message-Type') ->
    enumerated_avp(T, 'Message-Type', Data);
avp(T, Data, 'Multiple-Services-Credit-Control') ->
    grouped_avp(T, 'Multiple-Services-Credit-Control',
		Data);
avp(T, Data, 'Multiple-Services-Indicator') ->
    enumerated_avp(T, 'Multiple-Services-Indicator', Data);
avp(T, Data, 'Node-Functionality') ->
    enumerated_avp(T, 'Node-Functionality', Data);
avp(T, Data, 'Number-Of-Participants') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Operator-Name') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Originating-IOI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Originator') ->
    enumerated_avp(T, 'Originator', Data);
avp(T, Data, 'Originator-Address') ->
    grouped_avp(T, 'Originator-Address', Data);
avp(T, Data, 'Outgoing-Trunk-Group-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'PDG-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'PDG-Charging-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'PDP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'PDP-Context-Type') ->
    enumerated_avp(T, 'PDP-Context-Type', Data);
avp(T, Data, 'PS-Append-Free-Format-Data') ->
    enumerated_avp(T, 'PS-Append-Free-Format-Data', Data);
avp(T, Data, 'PS-Free-Format-Data') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'PS-Furnish-Charging-Information') ->
    grouped_avp(T, 'PS-Furnish-Charging-Information', Data);
avp(T, Data, 'PS-Information') ->
    grouped_avp(T, 'PS-Information', Data);
avp(T, Data, 'Participants-Involved') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'PoC-Controlling-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'PoC-Group-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'PoC-Information') ->
    grouped_avp(T, 'PoC-Information', Data);
avp(T, Data, 'PoC-Server-Role') ->
    enumerated_avp(T, 'PoC-Server-Role', Data);
avp(T, Data, 'PoC-Session-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'PoC-Session-Type') ->
    enumerated_avp(T, 'PoC-Session-Type', Data);
avp(T, Data, 'Positioning-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Priority') ->
    enumerated_avp(T, 'Priority', Data);
avp(T, Data, 'Quota-Consumption-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Quota-Holding-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'RAI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Rating-Group') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Read-Reply-Report-Requested') ->
    enumerated_avp(T, 'Read-Reply-Report-Requested', Data);
avp(T, Data, 'Recipient-Address') ->
    grouped_avp(T, 'Recipient-Address', Data);
avp(T, Data, 'Redirect-Address-Type') ->
    enumerated_avp(T, 'Redirect-Address-Type', Data);
avp(T, Data, 'Redirect-Server') ->
    grouped_avp(T, 'Redirect-Server', Data);
avp(T, Data, 'Redirect-Server-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Reply-Applic-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Reporting-Reason') ->
    enumerated_avp(T, 'Reporting-Reason', Data);
avp(T, Data, 'Requested-Action') ->
    enumerated_avp(T, 'Requested-Action', Data);
avp(T, Data, 'Requested-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Requested-Service-Unit') ->
    grouped_avp(T, 'Requested-Service-Unit', Data);
avp(T, Data, 'Required-MBMS-Bearer-Capabilities') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Restriction-Filter-Rule') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'Role-Of-Node') ->
    enumerated_avp(T, 'Role-Of-Node', Data);
avp(T, Data, 'SDP-Media-Component') ->
    grouped_avp(T, 'SDP-Media-Component', Data);
avp(T, Data, 'SDP-Media-Description') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SDP-Media-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SDP-Session-Description') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SGSN-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'SIP-Method') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Request-Timestamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'SIP-Response-Timestamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Served-Party-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Server-Capabilities') ->
    grouped_avp(T, 'Server-Capabilities', Data);
avp(T, Data, 'Service-Context-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Service-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Service-Identifier') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Service-Information') ->
    grouped_avp(T, 'Service-Information', Data);
avp(T, Data, 'Service-Parameter-Info') ->
    grouped_avp(T, 'Service-Parameter-Info', Data);
avp(T, Data, 'Service-Parameter-Type') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Service-Parameter-Value') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Service-Specific-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Submission-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Subscription-Id') ->
    grouped_avp(T, 'Subscription-Id', Data);
avp(T, Data, 'Subscription-Id-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Subscription-Id-Type') ->
    enumerated_avp(T, 'Subscription-Id-Type', Data);
avp(T, Data, 'TMGI') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Talk-Burst-Exchange') ->
    grouped_avp(T, 'Talk-Burst-Exchange', Data);
avp(T, Data, 'Tariff-Change-Usage') ->
    enumerated_avp(T, 'Tariff-Change-Usage', Data);
avp(T, Data, 'Tariff-Time-Change') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Terminating-IOI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Time-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Time-Stamps') ->
    grouped_avp(T, 'Time-Stamps', Data);
avp(T, Data, 'Token-Text') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Trigger') ->
    grouped_avp(T, 'Trigger', Data);
avp(T, Data, 'Trigger-Type') ->
    enumerated_avp(T, 'Trigger-Type', Data);
avp(T, Data, 'Trunk-Group-ID') ->
    grouped_avp(T, 'Trunk-Group-ID', Data);
avp(T, Data, 'Type-Number') ->
    enumerated_avp(T, 'Type-Number', Data);
avp(T, Data, 'Unit-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Unit-Value') ->
    grouped_avp(T, 'Unit-Value', Data);
avp(T, Data, 'Used-Service-Unit') ->
    grouped_avp(T, 'Used-Service-Unit', Data);
avp(T, Data, 'User-Equipment-Info') ->
    grouped_avp(T, 'User-Equipment-Info', Data);
avp(T, Data, 'User-Equipment-Info-Type') ->
    enumerated_avp(T, 'User-Equipment-Info-Type', Data);
avp(T, Data, 'User-Equipment-Info-Value') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'User-Session-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'VAS-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'VASP-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Validity-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Value-Digits') ->
    diameter_types:'Integer64'(T, Data);
avp(T, Data, 'Volume-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'WAG-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'WAG-PLMN-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'WLAN-Information') ->
    grouped_avp(T, 'WLAN-Information', Data);
avp(T, Data, 'WLAN-Radio-Container') ->
    grouped_avp(T, 'WLAN-Radio-Container', Data);
avp(T, Data, 'WLAN-Session-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'WLAN-Technology') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'WLAN-UE-Local-IPAddress') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Realtime-Required');
avp(T, Data, 'Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Number');
avp(T, Data, 'Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Type');
avp(T, Data, 'Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Sub-Session-Id');
avp(T, Data, 'Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Application-Id');
avp(T, Data, 'Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Interim-Interval');
avp(T, Data, 'Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Multi-Session-Id');
avp(T, Data, 'Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Session-Id');
avp(T, Data, 'Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Application-Id');
avp(T, Data, 'Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Grace-Period');
avp(T, Data, 'Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Request-Type');
avp(T, Data, 'Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Session-State');
avp(T, Data, 'Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Authorization-Lifetime');
avp(T, Data, 'Class') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Class');
avp(T, Data, 'Destination-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Host');
avp(T, Data, 'Destination-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Realm');
avp(T, Data, 'Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Disconnect-Cause');
avp(T, Data, 'E2E-Sequence') ->
    grouped_avp(T, 'E2E-Sequence', Data);
avp(T, Data, 'Error-Message') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Error-Message');
avp(T, Data, 'Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Error-Reporting-Host');
avp(T, Data, 'Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Event-Timestamp');
avp(T, Data, 'Experimental-Result') ->
    grouped_avp(T, 'Experimental-Result', Data);
avp(T, Data, 'Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Experimental-Result-Code');
avp(T, Data, 'Failed-AVP') ->
    grouped_avp(T, 'Failed-AVP', Data);
avp(T, Data, 'Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Firmware-Revision');
avp(T, Data, 'Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Host-IP-Address');
avp(T, Data, 'Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Inband-Security-Id');
avp(T, Data, 'Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Multi-Round-Time-Out');
avp(T, Data, 'Origin-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Host');
avp(T, Data, 'Origin-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Realm');
avp(T, Data, 'Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Origin-State-Id');
avp(T, Data, 'Product-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Product-Name');
avp(T, Data, 'Proxy-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-Host');
avp(T, Data, 'Proxy-Info') ->
    grouped_avp(T, 'Proxy-Info', Data);
avp(T, Data, 'Proxy-State') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-State');
avp(T, Data, 'Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Re-Auth-Request-Type');
avp(T, Data, 'Redirect-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Redirect-Host');
avp(T, Data, 'Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Host-Usage');
avp(T, Data, 'Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Max-Cache-Time');
avp(T, Data, 'Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Result-Code');
avp(T, Data, 'Route-Record') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Route-Record');
avp(T, Data, 'Session-Binding') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Binding');
avp(T, Data, 'Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Session-Id');
avp(T, Data, 'Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Server-Failover');
avp(T, Data, 'Session-Timeout') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Timeout');
avp(T, Data, 'Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Supported-Vendor-Id');
avp(T, Data, 'Termination-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Termination-Cause');
avp(T, Data, 'User-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'User-Name');
avp(T, Data, 'Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Vendor-Id');
avp(T, Data, 'Vendor-Specific-Application-Id') ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data);
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Request-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Request-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Request-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'CC-Session-Failover',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Session-Failover', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Session-Failover',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Session-Failover', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Check-Balance-Result',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Check-Balance-Result', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Check-Balance-Result',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Check-Balance-Result', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Credit-Control',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Credit-Control', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Credit-Control',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Credit-Control', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
	       'Credit-Control-Failure-Handling', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
	       'Credit-Control-Failure-Handling', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
	       'Credit-Control-Failure-Handling', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
	       'Credit-Control-Failure-Handling', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
	       'Credit-Control-Failure-Handling', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode,
	       'Credit-Control-Failure-Handling', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode,
	       'Direct-Debiting-Failure-Handling', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
	       'Direct-Debiting-Failure-Handling', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
	       'Direct-Debiting-Failure-Handling', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
	       'Direct-Debiting-Failure-Handling', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Tariff-Change-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Tariff-Change-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Tariff-Change-Usage', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Unit-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Unit-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Unit-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Unit-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Unit-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'CC-Unit-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Final-Unit-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Final-Unit-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Final-Unit-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Address-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Address-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Redirect-Address-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Redirect-Address-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Multiple-Services-Indicator',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Multiple-Services-Indicator',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Requested-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Requested-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Requested-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Requested-Action', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Subscription-Id-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Subscription-Id-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Subscription-Id-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Subscription-Id-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Subscription-Id-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'User-Equipment-Info-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'User-Equipment-Info-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'User-Equipment-Info-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'User-Equipment-Info-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Adaptations', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Adaptations', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Adaptations', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Adaptations', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Address-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Address-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Address-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Address-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Address-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Address-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Address-Type',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Address-Type', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Addressee-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Addressee-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Addressee-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Addressee-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Addressee-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Addressee-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Class-Identifier',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Class-Identifier', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Class-Identifier',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Class-Identifier', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Class-Identifier',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Class-Identifier', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Class-Identifier',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Class-Identifier', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Content-Class', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Content-Class', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Content-Class', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Content-Class', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Content-Class', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Content-Class', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Content-Class', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Content-Class',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Content-Class', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Delivery-Report-Requested',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Delivery-Report-Requested',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Delivery-Report-Requested',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Delivery-Report-Requested',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'DRM-Content', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'DRM-Content', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'DRM-Content', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'DRM-Content', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'File-Repair-Supported',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'File-Repair-Supported', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'File-Repair-Supported',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'File-Repair-Supported', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'LCS-Client-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'LCS-Client-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'LCS-Client-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'LCS-Client-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'LCS-Client-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'LCS-Client-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'LCS-Client-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'LCS-Client-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'LCS-Format-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'LCS-Format-Indicator', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'LCS-Format-Indicator',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'LCS-Format-Indicator', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'LCS-Format-Indicator',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'LCS-Format-Indicator', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'LCS-Format-Indicator',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'LCS-Format-Indicator', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'LCS-Format-Indicator',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'LCS-Format-Indicator', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Location-Estimate-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Location-Estimate-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Location-Estimate-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Location-Estimate-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Location-Estimate-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Location-Estimate-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Location-Estimate-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Location-Estimate-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Location-Estimate-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Location-Estimate-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Media-Initiator-Flag', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Media-Initiator-Flag', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Media-Initiator-Flag', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'MBMS-Service-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'MBMS-Service-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'MBMS-Service-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'MBMS-Service-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'MBMS-User-Service-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'MBMS-User-Service-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'MBMS-User-Service-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'MBMS-User-Service-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'MBMS-2G-3G-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'MBMS-2G-3G-Indicator', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'MBMS-2G-3G-Indicator',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'MBMS-2G-3G-Indicator', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'MBMS-2G-3G-Indicator',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'MBMS-2G-3G-Indicator', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Message-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Message-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Message-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Message-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Message-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Message-Type', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Message-Type', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Message-Type', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'Message-Type', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'Message-Type', 10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Message-Type', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Message-Type', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Message-Type', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Message-Type', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Message-Type',
	       <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Message-Type', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'MMBox-Storage-Requested',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'MMBox-Storage-Requested', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'MMBox-Storage-Requested',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'MMBox-Storage-Requested', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Node-Functionality', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Node-Functionality', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Node-Functionality', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Node-Functionality', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Node-Functionality', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Node-Functionality', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Node-Functionality', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Originator', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Originator', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Originator', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Originator', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PDP-Context-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PDP-Context-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PDP-Context-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PDP-Context-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PoC-Server-Role',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PoC-Server-Role', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PoC-Server-Role',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PoC-Server-Role', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PoC-Session-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PoC-Session-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PoC-Session-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PoC-Session-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PoC-Session-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'PoC-Session-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'PoC-Session-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'PoC-Session-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Priority', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Priority', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Priority', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Priority', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Priority', <<0, 0, 0, 2>>) -> 2;
enumerated_avp(encode, 'Priority', 2) -> <<0, 0, 0, 2>>;
enumerated_avp(decode, 'PS-Append-Free-Format-Data',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PS-Append-Free-Format-Data',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PS-Append-Free-Format-Data',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PS-Append-Free-Format-Data',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Read-Reply-Report-Requested',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Read-Reply-Report-Requested',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Read-Reply-Report-Requested',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Read-Reply-Report-Requested',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Reporting-Reason', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Reporting-Reason', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Reporting-Reason', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Reporting-Reason', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Reporting-Reason', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Reporting-Reason', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Reporting-Reason', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Reporting-Reason', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Reporting-Reason', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Role-Of-Node',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Role-Of-Node', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Role-Of-Node',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Role-Of-Node', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Role-Of-Node',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Role-Of-Node', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Role-Of-Node',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Role-Of-Node', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Trigger-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Trigger-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Trigger-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Trigger-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'Trigger-Type', 10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Trigger-Type', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Trigger-Type', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Trigger-Type', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Trigger-Type', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Trigger-Type', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Trigger-Type', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Trigger-Type', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Trigger-Type', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 19>>) ->
    19;
enumerated_avp(encode, 'Trigger-Type', 19) ->
    <<0, 0, 0, 19>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 20>>) ->
    20;
enumerated_avp(encode, 'Trigger-Type', 20) ->
    <<0, 0, 0, 20>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 21>>) ->
    21;
enumerated_avp(encode, 'Trigger-Type', 21) ->
    <<0, 0, 0, 21>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 22>>) ->
    22;
enumerated_avp(encode, 'Trigger-Type', 22) ->
    <<0, 0, 0, 22>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 23>>) ->
    23;
enumerated_avp(encode, 'Trigger-Type', 23) ->
    <<0, 0, 0, 23>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 30>>) ->
    30;
enumerated_avp(encode, 'Trigger-Type', 30) ->
    <<0, 0, 0, 30>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 31>>) ->
    31;
enumerated_avp(encode, 'Trigger-Type', 31) ->
    <<0, 0, 0, 31>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 32>>) ->
    32;
enumerated_avp(encode, 'Trigger-Type', 32) ->
    <<0, 0, 0, 32>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 33>>) ->
    33;
enumerated_avp(encode, 'Trigger-Type', 33) ->
    <<0, 0, 0, 33>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 34>>) ->
    34;
enumerated_avp(encode, 'Trigger-Type', 34) ->
    <<0, 0, 0, 34>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 40>>) ->
    40;
enumerated_avp(encode, 'Trigger-Type', 40) ->
    <<0, 0, 0, 40>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 50>>) ->
    50;
enumerated_avp(encode, 'Trigger-Type', 50) ->
    <<0, 0, 0, 50>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Cost-Information') ->
    empty_group('Cost-Information');
empty_value('Unit-Value') -> empty_group('Unit-Value');
empty_value('Granted-Service-Unit') ->
    empty_group('Granted-Service-Unit');
empty_value('Requested-Service-Unit') ->
    empty_group('Requested-Service-Unit');
empty_value('Used-Service-Unit') ->
    empty_group('Used-Service-Unit');
empty_value('CC-Money') -> empty_group('CC-Money');
empty_value('G-S-U-Pool-Reference') ->
    empty_group('G-S-U-Pool-Reference');
empty_value('Final-Unit-Indication') ->
    empty_group('Final-Unit-Indication');
empty_value('Redirect-Server') ->
    empty_group('Redirect-Server');
empty_value('Service-Parameter-Info') ->
    empty_group('Service-Parameter-Info');
empty_value('Subscription-Id') ->
    empty_group('Subscription-Id');
empty_value('User-Equipment-Info') ->
    empty_group('User-Equipment-Info');
empty_value('Multiple-Services-Credit-Control') ->
    empty_group('Multiple-Services-Credit-Control');
empty_value('Additional-Content-Information') ->
    empty_group('Additional-Content-Information');
empty_value('Address-Domain') ->
    empty_group('Address-Domain');
empty_value('Application-Server-Information') ->
    empty_group('Application-Server-Information');
empty_value('Event-Type') -> empty_group('Event-Type');
empty_value('IMS-Information') ->
    empty_group('IMS-Information');
empty_value('Inter-Operator-Identifier') ->
    empty_group('Inter-Operator-Identifier');
empty_value('LCS-Client-ID') ->
    empty_group('LCS-Client-ID');
empty_value('LCS-Client-Name') ->
    empty_group('LCS-Client-Name');
empty_value('LCS-Information') ->
    empty_group('LCS-Information');
empty_value('LCS-Requestor-ID') ->
    empty_group('LCS-Requestor-ID');
empty_value('Location-Type') ->
    empty_group('Location-Type');
empty_value('MBMS-Information') ->
    empty_group('MBMS-Information');
empty_value('Message-Body') ->
    empty_group('Message-Body');
empty_value('Message-Class') ->
    empty_group('Message-Class');
empty_value('MM-Content-Type') ->
    empty_group('MM-Content-Type');
empty_value('MMS-Information') ->
    empty_group('MMS-Information');
empty_value('Originator-Address') ->
    empty_group('Originator-Address');
empty_value('PoC-Information') ->
    empty_group('PoC-Information');
empty_value('PS-Furnish-Charging-Information') ->
    empty_group('PS-Furnish-Charging-Information');
empty_value('PS-Information') ->
    empty_group('PS-Information');
empty_value('Recipient-Address') ->
    empty_group('Recipient-Address');
empty_value('SDP-Media-Component') ->
    empty_group('SDP-Media-Component');
empty_value('Service-Information') ->
    empty_group('Service-Information');
empty_value('Time-Stamps') ->
    empty_group('Time-Stamps');
empty_value('Trigger') -> empty_group('Trigger');
empty_value('WLAN-Information') ->
    empty_group('WLAN-Information');
empty_value('WLAN-Radio-Container') ->
    empty_group('WLAN-Radio-Container');
empty_value('Trunk-Group-ID') ->
    empty_group('Trunk-Group-ID');
empty_value('Proxy-Info') -> empty_group('Proxy-Info');
empty_value('Failed-AVP') -> empty_group('Failed-AVP');
empty_value('Experimental-Result') ->
    empty_group('Experimental-Result');
empty_value('Vendor-Specific-Application-Id') ->
    empty_group('Vendor-Specific-Application-Id');
empty_value('E2E-Sequence') ->
    empty_group('E2E-Sequence');
empty_value('CC-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('CC-Session-Failover') -> <<0, 0, 0, 0>>;
empty_value('Check-Balance-Result') -> <<0, 0, 0, 0>>;
empty_value('Credit-Control') -> <<0, 0, 0, 0>>;
empty_value('Credit-Control-Failure-Handling') ->
    <<0, 0, 0, 0>>;
empty_value('Direct-Debiting-Failure-Handling') ->
    <<0, 0, 0, 0>>;
empty_value('Tariff-Change-Usage') -> <<0, 0, 0, 0>>;
empty_value('CC-Unit-Type') -> <<0, 0, 0, 0>>;
empty_value('Final-Unit-Action') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Address-Type') -> <<0, 0, 0, 0>>;
empty_value('Multiple-Services-Indicator') ->
    <<0, 0, 0, 0>>;
empty_value('Requested-Action') -> <<0, 0, 0, 0>>;
empty_value('Subscription-Id-Type') -> <<0, 0, 0, 0>>;
empty_value('User-Equipment-Info-Type') ->
    <<0, 0, 0, 0>>;
empty_value('Adaptations') -> <<0, 0, 0, 0>>;
empty_value('Address-Type') -> <<0, 0, 0, 0>>;
empty_value('Addressee-Type') -> <<0, 0, 0, 0>>;
empty_value('Class-Identifier') -> <<0, 0, 0, 0>>;
empty_value('Content-Class') -> <<0, 0, 0, 0>>;
empty_value('Delivery-Report-Requested') ->
    <<0, 0, 0, 0>>;
empty_value('DRM-Content') -> <<0, 0, 0, 0>>;
empty_value('File-Repair-Supported') -> <<0, 0, 0, 0>>;
empty_value('LCS-Client-Type') -> <<0, 0, 0, 0>>;
empty_value('LCS-Format-Indicator') -> <<0, 0, 0, 0>>;
empty_value('Location-Estimate-Type') -> <<0, 0, 0, 0>>;
empty_value('Media-Initiator-Flag') -> <<0, 0, 0, 0>>;
empty_value('MBMS-Service-Type') -> <<0, 0, 0, 0>>;
empty_value('MBMS-User-Service-Type') -> <<0, 0, 0, 0>>;
empty_value('MBMS-2G-3G-Indicator') -> <<0, 0, 0, 0>>;
empty_value('Message-Type') -> <<0, 0, 0, 0>>;
empty_value('MMBox-Storage-Requested') ->
    <<0, 0, 0, 0>>;
empty_value('Node-Functionality') -> <<0, 0, 0, 0>>;
empty_value('Originator') -> <<0, 0, 0, 0>>;
empty_value('PDP-Context-Type') -> <<0, 0, 0, 0>>;
empty_value('PoC-Server-Role') -> <<0, 0, 0, 0>>;
empty_value('PoC-Session-Type') -> <<0, 0, 0, 0>>;
empty_value('Priority') -> <<0, 0, 0, 0>>;
empty_value('PS-Append-Free-Format-Data') ->
    <<0, 0, 0, 0>>;
empty_value('Read-Reply-Report-Requested') ->
    <<0, 0, 0, 0>>;
empty_value('Reporting-Reason') -> <<0, 0, 0, 0>>;
empty_value('Role-Of-Node') -> <<0, 0, 0, 0>>;
empty_value('Trigger-Type') -> <<0, 0, 0, 0>>;
empty_value('Disconnect-Cause') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Host-Usage') -> <<0, 0, 0, 0>>;
empty_value('Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Auth-Session-State') -> <<0, 0, 0, 0>>;
empty_value('Re-Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Termination-Cause') -> <<0, 0, 0, 0>>;
empty_value('Session-Server-Failover') ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Record-Type') -> <<0, 0, 0, 0>>;
empty_value('Accounting-Realtime-Required') ->
    <<0, 0, 0, 0>>;
empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"3GPP-Charging-Characteristics", 13, "UTF8String",
	"MV"},
       {"3GPP-Charging-Id", 2, "OctetString", "MV"},
       {"3GPP-GGSN-MCC-MNC", 9, "UTF8String", "MV"},
       {"3GPP-GPRS-Negotiated-QoS-Profile", 5, "UTF8String",
	"MV"},
       {"3GPP-IMSI", 1, "UTF8String", "MV"},
       {"3GPP-IMSI-MCC-MNC", 8, "UTF8String", "MV"},
       {"3GPP-MS-TimeZone", 23, "OctetString", "MV"},
       {"3GPP-NSAPI", 10, "OctetString", "MV"},
       {"3GPP-PDP-Type", 3, "OctetString", "MV"},
       {"3GPP-RAT-Type", 21, "OctetString", "MV"},
       {"3GPP-SGSN-MCC-MNC", 18, "OctetString", "MV"},
       {"3GPP-Selection-Mode", 12, "OctetString", "MV"},
       {"3GPP-Session-Stop-Indicator", 11, "OctetString",
	"MV"},
       {"3GPP-User-Location-Info", 22, "OctetString", "MV"},
       {"Adaptations", 1217, "Enumerated", "MV"},
       {"Additional-Content-Information", 1207, "Grouped",
	"MV"},
       {"Additional-Type-Information", 1205, "UTF8String",
	"MV"},
       {"Address-Data", 897, "UTF8String", "MV"},
       {"Address-Domain", 898, "Grouped", "MV"},
       {"Address-Type", 899, "Enumerated", "MV"},
       {"Addressee-Type", 1208, "Enumerated", "MV"},
       {"Applic-ID", 1218, "UTF8String", "MV"},
       {"Application-Server", 836, "UTF8String", "MV"},
       {"Application-Server-Information", 850, "Grouped",
	"MV"},
       {"Application-provided-called-party-address", 837,
	"UTF8String", "MV"},
       {"Associated-URI", 856, "UTF8String", "MV"},
       {"Authorized-QoS", 849, "UTF8String", "MV"},
       {"Aux-Applic-Info", 1219, "UTF8String", "MV"},
       {"Bearer-Service", 854, "OctetString", "MV"},
       {"CC-Correlation-Id", 411, "OctetString", []},
       {"CC-Input-Octets", 412, "Unsigned64", "M"},
       {"CC-Money", 413, "Grouped", "M"},
       {"CC-Output-Octets", 414, "Unsigned64", "M"},
       {"CC-Request-Number", 415, "Unsigned32", "M"},
       {"CC-Request-Type", 416, "Enumerated", "M"},
       {"CC-Service-Specific-Units", 417, "Unsigned64", "M"},
       {"CC-Session-Failover", 418, "Enumerated", "M"},
       {"CC-Sub-Session-Id", 419, "Unsigned64", "M"},
       {"CC-Time", 420, "Unsigned32", "M"},
       {"CC-Total-Octets", 421, "Unsigned64", "M"},
       {"CC-Unit-Type", 454, "Enumerated", "M"},
       {"CG-Address", 846, "Address", "MV"},
       {"Called-Asserted-Identity", 1250, "UTF8String", "MV"},
       {"Called-Party-Address", 832, "UTF8String", "MV"},
       {"Called-Station-Id", 30, "UTF8String", "M"},
       {"Calling-Party-Address", 831, "UTF8String", "MV"},
       {"Cause-Code", 861, "Integer32", "MV"},
       {"Charged-Party", 857, "UTF8String", "MV"},
       {"Charging-Rule-Base-Name", 1004, "UTF8String", "MV"},
       {"Check-Balance-Result", 422, "Enumerated", "M"},
       {"Class-Identifier", 1214, "Enumerated", "MV"},
       {"Content-Class", 1220, "Enumerated", "MV"},
       {"Content-Disposition", 828, "UTF8String", "MV"},
       {"Content-Length", 827, "Unsigned32", "MV"},
       {"Content-Size", 1206, "Unsigned32", "MV"},
       {"Content-Type", 826, "UTF8String", "MV"},
       {"Cost-Information", 423, "Grouped", "M"},
       {"Cost-Unit", 424, "UTF8String", "M"},
       {"Credit-Control", 426, "Enumerated", "M"},
       {"Credit-Control-Failure-Handling", 427, "Enumerated",
	"M"},
       {"Currency-Code", 425, "Unsigned32", "M"},
       {"DRM-Content", 1221, "Enumerated", "MV"},
       {"Deferred-Location-Event-Type", 1230, "UTF8String",
	"MV"},
       {"Delivery-Report-Requested", 1216, "Enumerated", "MV"},
       {"Direct-Debiting-Failure-Handling", 428, "Enumerated",
	"M"},
       {"Domain-Name", 1200, "UTF8String", "MV"},
       {"Event", 825, "UTF8String", "MV"},
       {"Event-Type", 823, "Grouped", "MV"},
       {"Expires", 888, "Unsigned32", "MV"},
       {"Exponent", 429, "Integer32", "M"},
       {"File-Repair-Supported", 1224, "Enumerated", "MV"},
       {"Filter-Id", 11, "UTF8String", "M"},
       {"Final-Unit-Action", 449, "Enumerated", "M"},
       {"Final-Unit-Indication", 430, "Grouped", "M"},
       {"G-S-U-Pool-Identifier", 453, "Unsigned32", "M"},
       {"G-S-U-Pool-Reference", 457, "Grouped", "M"},
       {"GGSN-Address", 847, "Address", "MV"},
       {"Granted-Service-Unit", 431, "Grouped", "M"},
       {"IMS-Charging-Identifier", 841, "UTF8String", "MV"},
       {"IMS-Information", 876, "Grouped", "MV"},
       {"Incoming-Trunk-Group-ID", 852, "UTF8String", "MV"},
       {"Inter-Operator-Identifier", 838, "Grouped", "MV"},
       {"LCS-APN", 1231, "UTF8String", "MV"},
       {"LCS-Client-Dialed-By-MS", 1233, "UTF8String", "MV"},
       {"LCS-Client-External-ID", 1234, "UTF8String", "MV"},
       {"LCS-Client-ID", 1232, "Grouped", "MV"},
       {"LCS-Client-Name", 1235, "Grouped", "MV"},
       {"LCS-Client-Type", 1241, "Enumerated", "MV"},
       {"LCS-Data-Coding-Scheme", 1236, "UTF8String", "MV"},
       {"LCS-Format-Indicator", 1237, "Enumerated", "MV"},
       {"LCS-Information", 878, "Grouped", "MV"},
       {"LCS-Name-String", 1238, "UTF8String", "MV"},
       {"LCS-Requestor-ID", 1239, "Grouped", "MV"},
       {"LCS-Requestor-ID-String", 1240, "UTF8String", "MV"},
       {"Location-Estimate", 1242, "UTF8String", "MV"},
       {"Location-Estimate-Type", 1243, "Enumerated", "MV"},
       {"Location-Information", 127, "OctetString", []},
       {"Location-Type", 1244, "Grouped", "MV"},
       {"MBMS-2G-3G-Indicator", 907, "Enumerated", "MV"},
       {"MBMS-Information", 880, "Grouped", "MV"},
       {"MBMS-Service-Area", 903, "OctetString", "MV"},
       {"MBMS-Service-Type", 906, "Enumerated", "MV"},
       {"MBMS-Session-Identity", 908, "OctetString", "MV"},
       {"MBMS-User-Service-Type", 1225, "Enumerated", "MV"},
       {"MM-Content-Type", 1203, "Grouped", "MV"},
       {"MMBox-Storage-Requested", 1248, "Enumerated", "MV"},
       {"MMS-Information", 877, "Grouped", "MV"},
       {"MSISDN", 701, "OctetString", "MV"},
       {"Media-Initiator-Flag", 882, "Enumerated", "MV"},
       {"Message-Body", 889, "Grouped", "MV"},
       {"Message-Class", 1213, "Grouped", "MV"},
       {"Message-ID", 1210, "UTF8String", "MV"},
       {"Message-Size", 1212, "Unsigned32", "MV"},
       {"Message-Type", 1211, "Enumerated", "MV"},
       {"Multiple-Services-Credit-Control", 456, "Grouped",
	"M"},
       {"Multiple-Services-Indicator", 455, "Enumerated", "M"},
       {"Node-Functionality", 862, "Enumerated", "MV"},
       {"Number-Of-Participants", 885, "Unsigned32", "MV"},
       {"Operator-Name", 126, "OctetString", []},
       {"Originating-IOI", 839, "UTF8String", "MV"},
       {"Originator", 864, "Enumerated", "MV"},
       {"Originator-Address", 886, "Grouped", "MV"},
       {"Outgoing-Trunk-Group-ID", 853, "UTF8String", "MV"},
       {"PDG-Address", 895, "Address", "MV"},
       {"PDG-Charging-Id", 896, "Unsigned32", "MV"},
       {"PDP-Address", 1227, "Address", "MV"},
       {"PDP-Context-Type", 1247, "Enumerated", "MV"},
       {"PS-Append-Free-Format-Data", 867, "Enumerated", "MV"},
       {"PS-Free-Format-Data", 866, "OctetString", "MV"},
       {"PS-Furnish-Charging-Information", 865, "Grouped",
	"MV"},
       {"PS-Information", 874, "Grouped", "MV"},
       {"Participants-Involved", 887, "UTF8String", "MV"},
       {"PoC-Controlling-Address", 858, "UTF8String", "MV"},
       {"PoC-Group-Name", 859, "UTF8String", "MV"},
       {"PoC-Information", 879, "Grouped", "MV"},
       {"PoC-Server-Role", 883, "Enumerated", "MV"},
       {"PoC-Session-Id", 1229, "UTF8String", "MV"},
       {"PoC-Session-Type", 884, "Enumerated", "MV"},
       {"Positioning-Data", 1245, "UTF8String", "MV"},
       {"Priority", 1209, "Enumerated", "MV"},
       {"Quota-Consumption-Time", 881, "Unsigned32", "MV"},
       {"Quota-Holding-Time", 871, "Unsigned32", "MV"},
       {"RAI", 909, "UTF8String", "MV"},
       {"Rating-Group", 432, "Unsigned32", "M"},
       {"Read-Reply-Report-Requested", 1222, "Enumerated",
	"MV"},
       {"Recipient-Address", 1201, "Grouped", "MV"},
       {"Redirect-Address-Type", 433, "Enumerated", "M"},
       {"Redirect-Server", 434, "Grouped", "M"},
       {"Redirect-Server-Address", 435, "UTF8String", "M"},
       {"Reply-Applic-ID", 1223, "UTF8String", "MV"},
       {"Reporting-Reason", 872, "Enumerated", "MV"},
       {"Requested-Action", 436, "Enumerated", "M"},
       {"Requested-Party-Address", 1251, "UTF8String", "MV"},
       {"Requested-Service-Unit", 437, "Grouped", "M"},
       {"Required-MBMS-Bearer-Capabilities", 901, "UTF8String",
	"MV"},
       {"Restriction-Filter-Rule", 438, "IPFilterRule", "M"},
       {"Role-Of-Node", 829, "Enumerated", "MV"},
       {"SDP-Media-Component", 843, "Grouped", "MV"},
       {"SDP-Media-Description", 845, "UTF8String", "MV"},
       {"SDP-Media-Name", 844, "UTF8String", "MV"},
       {"SDP-Session-Description", 842, "UTF8String", "MV"},
       {"SGSN-Address", 1228, "Address", "MV"},
       {"SIP-Method", 824, "UTF8String", "MV"},
       {"SIP-Request-Timestamp", 834, "Time", "MV"},
       {"SIP-Response-Timestamp", 835, "Time", "MV"},
       {"Served-Party-IP-Address", 848, "Address", "MV"},
       {"Server-Capabilities", 603, "Grouped", "MV"},
       {"Service-Context-Id", 461, "UTF8String", "M"},
       {"Service-Id", 855, "UTF8String", "MV"},
       {"Service-Identifier", 439, "Unsigned32", "M"},
       {"Service-Information", 873, "Grouped", "MV"},
       {"Service-Parameter-Info", 440, "Grouped", []},
       {"Service-Parameter-Type", 441, "Unsigned32", []},
       {"Service-Parameter-Value", 442, "OctetString", []},
       {"Service-Specific-Data", 863, "UTF8String", "MV"},
       {"Submission-Time", 1202, "Time", "MV"},
       {"Subscription-Id", 443, "Grouped", "M"},
       {"Subscription-Id-Data", 444, "UTF8String", "M"},
       {"Subscription-Id-Type", 450, "Enumerated", "M"},
       {"TMGI", 900, "OctetString", "MV"},
       {"Talk-Burst-Exchange", 1255, "Grouped", "MV"},
       {"Tariff-Change-Usage", 452, "Enumerated", "M"},
       {"Tariff-Time-Change", 451, "Time", "M"},
       {"Terminating-IOI", 840, "UTF8String", "MV"},
       {"Time-Quota-Threshold", 868, "Unsigned32", "MV"},
       {"Time-Stamps", 833, "Grouped", "MV"},
       {"Token-Text", 1215, "UTF8String", "MV"},
       {"Trigger", 1264, "Grouped", "MV"},
       {"Trigger-Type", 870, "Enumerated", "MV"},
       {"Trunk-Group-ID", 851, "Grouped", "MV"},
       {"Type-Number", 1204, "Enumerated", "MV"},
       {"Unit-Quota-Threshold", 1226, "Unsigned32", "MV"},
       {"Unit-Value", 445, "Grouped", "M"},
       {"Used-Service-Unit", 446, "Grouped", "M"},
       {"User-Equipment-Info", 458, "Grouped", []},
       {"User-Equipment-Info-Type", 459, "Enumerated", []},
       {"User-Equipment-Info-Value", 460, "OctetString", []},
       {"User-Session-ID", 830, "UTF8String", "MV"},
       {"VAS-Id", 1102, "UTF8String", "MV"},
       {"VASP-Id", 1101, "UTF8String", "MV"},
       {"Validity-Time", 448, "Unsigned32", "M"},
       {"Value-Digits", 447, "Integer64", "M"},
       {"Volume-Quota-Threshold", 869, "Unsigned32", "MV"},
       {"WAG-Address", 890, "Address", "MV"},
       {"WAG-PLMN-Id", 891, "OctetString", "MV"},
       {"WLAN-Information", 875, "Grouped", "MV"},
       {"WLAN-Radio-Container", 892, "Grouped", "MV"},
       {"WLAN-Session-Id", 1246, "UTF8String", "MV"},
       {"WLAN-Technology", 893, "Unsigned32", "MV"},
       {"WLAN-UE-Local-IPAddress", 894, "Address", "MV"}]},
     {avp_vendor_id, []}, {codecs, []},
     {command_codes, [{272, "CCR", "CCA"}]},
     {custom_types, []},
     {define,
      [{"Result-Code",
	[{"END_USER_SERVICE_DENIED", 4010},
	 {"CREDIT_CONTROL_NOT_APPLICABLE", 4011},
	 {"CREDIT_LIMIT_REACHED", 4012}, {"USER_UNKNOWN", 5030},
	 {"RATING_FAILED", 5031}]}]},
     {enum,
      [{"CC-Request-Type",
	[{"INITIAL_REQUEST", 1}, {"UPDATE_REQUEST", 2},
	 {"TERMINATION_REQUEST", 3}, {"EVENT_REQUEST", 4}]},
       {"CC-Session-Failover",
	[{"NOT_SUPPORTED", 0}, {"SUPPORTED", 1}]},
       {"Check-Balance-Result",
	[{"ENOUGH_CREDIT", 0}, {"NO_CREDIT", 1}]},
       {"Credit-Control",
	[{"AUTHORIZATION", 0}, {"RE_AUTHORIZATION", 1}]},
       {"Credit-Control-Failure-Handling",
	[{"TERMINATE", 0}, {"CONTINUE", 1},
	 {"RETRY_AND_TERMINATE", 2}]},
       {"Direct-Debiting-Failure-Handling",
	[{"TERMINATE_OR_BUFFER", 0}, {"CONTINUE", 1}]},
       {"Tariff-Change-Usage",
	[{"UNIT_BEFORE_TARIFF_CHANGE", 0},
	 {"UNIT_AFTER_TARIFF_CHANGE", 1},
	 {"UNIT_INDETERMINATE", 2}]},
       {"CC-Unit-Type",
	[{"TIME", 0}, {"MONEY", 1}, {"TOTAL-OCTETS", 2},
	 {"INPUT-OCTETS", 3}, {"OUTPUT-OCTETS", 4},
	 {"SERVICE-SPECIFIC-UNITS", 5}]},
       {"Final-Unit-Action",
	[{"TERMINATE", 0}, {"REDIRECT", 1},
	 {"RESTRICT_ACCESS", 2}]},
       {"Redirect-Address-Type",
	[{"IPV4", 0}, {"IPV6", 1}, {"URL", 2}, {"SIP_URI", 3}]},
       {"Multiple-Services-Indicator",
	[{"NOT_SUPPORTED", 0}, {"SUPPORTED", 1}]},
       {"Requested-Action",
	[{"DIRECT_DEBITING", 0}, {"REFUND_ACCOUNT", 1},
	 {"CHECK_BALANCE", 2}, {"PRICE_ENQUIRY", 3}]},
       {"Subscription-Id-Type",
	[{"END_USER_E164", 0}, {"END_USER_IMSI", 1},
	 {"END_USER_SIP_URI", 2}, {"END_USER_NAI", 3},
	 {"END_USER_PRIVATE", 4}]},
       {"User-Equipment-Info-Type",
	[{"IMEISV", 0}, {"MAC", 1}, {"EUI64", 2},
	 {"MODIFIED_EUI64", 3}]},
       {"Adaptations", [{"YES", 0}, {"NO", 1}]},
       {"Address-Type",
	[{"E_MAIL_ADDRESS", 0}, {"MSISDN", 1},
	 {"IPV4_ADDRESS", 2}, {"IPV6_ADDRESS", 3},
	 {"NUMERIC_SHORTCODE", 4}, {"ALPHANUMERIC_SHORTCODE", 5},
	 {"OTHER", 6}]},
       {"Addressee-Type", [{"TO", 0}, {"CC", 1}, {"BCC", 2}]},
       {"Class-Identifier",
	[{"PERSONAL", 0}, {"ADVERDISMENT", 1},
	 {"INFORMATIONAL", 2}, {"AUTO", 3}]},
       {"Content-Class",
	[{"TEXT", 0}, {"IMAGE_BASIC", 1}, {"IMAGE_RICH", 2},
	 {"VIDEO_BASIC", 3}, {"VIDEO_RICH", 4}, {"MEGAPIXEL", 5},
	 {"CONTENT_BASIC", 6}, {"CONTENT_RICH", 7}]},
       {"Delivery-Report-Requested", [{"NO", 0}, {"YES", 1}]},
       {"DRM-Content", [{"NO", 0}, {"YES", 1}]},
       {"File-Repair-Supported",
	[{"SUPPORTED", 1}, {"NOT_SUPPORTED", 2}]},
       {"LCS-Client-Type",
	[{"EMERGENCY_SERVICES", 0}, {"VALUE_ADDED_SERVICES", 1},
	 {"PLMN_OPERATOR_SERVICES", 2},
	 {"LAWFUL_INTERCEPT_SERVICES", 3}]},
       {"LCS-Format-Indicator",
	[{"LOGICAL_NAME", 0}, {"EMAIL_ADDRESS", 1},
	 {"MSISDN", 2}, {"URL", 3}, {"SIP_URL", 4}]},
       {"Location-Estimate-Type",
	[{"CURRENT_LOCATION", 0},
	 {"CURRENT_LAST_KNOWN_LOCATION", 1},
	 {"INITIAL_LOCATION", 2},
	 {"ACTIVATE_DEFERRED_LOCATION", 3},
	 {"CANCEL_DEFERRED_LOCATION", 4}]},
       {"Media-Initiator-Flag",
	[{"CALLED_PARTY", 0}, {"CALLING_PARTY", 1},
	 {"UNKNOWN", 2}]},
       {"MBMS-Service-Type",
	[{"MULTICAST", 0}, {"BROADCAST", 1}]},
       {"MBMS-User-Service-Type",
	[{"DOWNLOAD", 0}, {"STREAMING", 1}]},
       {"MBMS-2G-3G-Indicator",
	[{"2G", 0}, {"3G", 1}, {"2G_AND_3G", 2}]},
       {"Message-Type",
	[{"M_SEND_REQ", 1}, {"M_SEND_CONF", 2},
	 {"M_NOTIFICATION_IND", 3}, {"M_NOTIFYRESP_IND", 4},
	 {"M_RETRIEVE_CONF", 5}, {"M_ACKNOWLEDGE_IND", 6},
	 {"M_DELIVERY_IND", 7}, {"M_READ_REC_IND", 8},
	 {"M_READ_ORIG_IND", 9}, {"M_FORWARD_REQ", 10},
	 {"M_FORWARD_CONF", 11}, {"M_MBOX_STORE_CONF", 12},
	 {"M_MBOX_VIEW_CONF", 13}, {"M_MBOX_UPLOAD_CONF", 14},
	 {"M_MBOX_DELETE_CONF", 15}]},
       {"MMBox-Storage-Requested", [{"NO", 0}, {"YES", 1}]},
       {"Node-Functionality",
	[{"S-CSCF", 0}, {"P-CSCF", 1}, {"I-CSCF", 2},
	 {"MRFC", 3}, {"MGCF", 4}, {"BGCF", 5}, {"AS", 6}]},
       {"Originator",
	[{"CALLING_PARTY", 0}, {"CALLED_PARTY", 1}]},
       {"PDP-Context-Type",
	[{"PRIMARY", 0}, {"SECONDARY", 1}]},
       {"PoC-Server-Role",
	[{"PARTICIPATING_POC_SERVER", 0},
	 {"CONTROLLING_POC_SERVER", 1}]},
       {"PoC-Session-Type",
	[{"1_TO_1_POC_SESSION", 0},
	 {"CHAT_POC_GROUP_SESSION", 1},
	 {"PRE_ARRANGED_POC_GROUP_SESSION", 2},
	 {"AD_HOC_POC_GROUP_SESSION", 3}]},
       {"Priority", [{"LOW", 0}, {"NORMAL", 1}, {"HIGH", 2}]},
       {"PS-Append-Free-Format-Data",
	[{"APPEND", 0}, {"OVERWRITE", 1}]},
       {"Read-Reply-Report-Requested",
	[{"NO", 0}, {"YES", 1}]},
       {"Reporting-Reason",
	[{"THRESHOLD", 0}, {"QHT", 1}, {"FINAL", 2},
	 {"QUOTA_EXHAUSTED", 3}, {"VALIDITY_TIME", 4},
	 {"OTHER_QUOTA_TYPE", 5}, {"RATING_CONDITION_CHANGE", 6},
	 {"FORCED_REAUTHORISATION", 7}, {"POOL_EXHAUSTED", 8}]},
       {"Role-Of-Node",
	[{"ORIGINATING_ROLE", 0}, {"TERMINATING_ROLE", 1},
	 {"PROXY_ROLE", 2}, {"B2BUA_ROLE", 3}]},
       {"Trigger-Type",
	[{"CHANGE_IN_SGSN_IP_ADDRESS", 1}, {"CHANGE_IN_QOS", 2},
	 {"CHANGE_IN_LOCATION", 3}, {"CHANGE_IN_RAT", 4},
	 {"CHANGEINQOS_TRAFFIC_CLASS", 10},
	 {"CHANGEINQOS_RELIABILITY_CLASS", 11},
	 {"CHANGEINQOS_DELAY_CLASS", 12},
	 {"CHANGEINQOS_PEAK_THROUGHPUT", 13},
	 {"CHANGEINQOS_PRECEDENCE_CLASS", 14},
	 {"CHANGEINQOS_MEAN_THROUGHPUT", 15},
	 {"CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK", 16},
	 {"CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK", 17},
	 {"CHANGEINQOS_RESIDUAL_BER", 18},
	 {"CHANGEINQOS_SDU_ERROR_RATIO", 19},
	 {"CHANGEINQOS_TRANSFER_DELAY", 20},
	 {"CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY", 21},
	 {"CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK", 22},
	 {"CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK", 23},
	 {"CHANGEINLOCATION_MCC", 30},
	 {"CHANGEINLOCATION_MNC", 31},
	 {"CHANGEINLOCATION_RAC", 32},
	 {"CHANGEINLOCATION_LAC", 33},
	 {"CHANGEINLOCATION_CellId", 34},
	 {"CHANGE_IN_MEDIA_COMPOSITION", 40},
	 {"CHANGEINPARTICIPANTS_Number", 50}]}]},
     {grouped,
      [{"Cost-Information", 423, [],
	[{"Unit-Value"}, {"Currency-Code"}, ["Cost-Unit"]]},
       {"Unit-Value", 445, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"Granted-Service-Unit", 431, [],
	[["Tariff-Time-Change"], ["CC-Time"], ["CC-Money"],
	 ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["AVP"]}]},
       {"Requested-Service-Unit", 437, [],
	[["CC-Time"], ["CC-Money"], ["CC-Total-Octets"],
	 ["CC-Input-Octets"], ["CC-Output-Octets"],
	 ["CC-Service-Specific-Units"], {'*', ["AVP"]}]},
       {"Used-Service-Unit", 446, [],
	[["Tariff-Change-Usage"], ["CC-Time"], ["CC-Money"],
	 ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["AVP"]}]},
       {"CC-Money", 413, [],
	[{"Unit-Value"}, ["Currency-Code"]]},
       {"G-S-U-Pool-Reference", 457, [],
	[{"G-S-U-Pool-Identifier"}, {"CC-Unit-Type"},
	 {"Unit-Value"}]},
       {"Final-Unit-Indication", 430, [],
	[{"Final-Unit-Action"},
	 {'*', ["Restriction-Filter-Rule"]},
	 {'*', ["Filter-Id"]}, ["Redirect-Server"]]},
       {"Redirect-Server", 434, [],
	[{"Redirect-Address-Type"},
	 {"Redirect-Server-Address"}]},
       {"Service-Parameter-Info", 440, [],
	[{"Service-Parameter-Type"},
	 {"Service-Parameter-Value"}]},
       {"Subscription-Id", 443, [],
	[{"Subscription-Id-Type"}, {"Subscription-Id-Data"}]},
       {"User-Equipment-Info", 458, [],
	[{"User-Equipment-Info-Type"},
	 {"User-Equipment-Info-Value"}]},
       {"Multiple-Services-Credit-Control", 456, [],
	[["Granted-Service-Unit"], ["Requested-Service-Unit"],
	 {'*', ["Used-Service-Unit"]}, ["Tariff-Change-Usage"],
	 {'*', ["Service-Identifier"]}, ["Rating-Group"],
	 {'*', ["G-S-U-Pool-Reference"]}, ["Validity-Time"],
	 ["Result-Code"], ["Final-Unit-Indication"],
	 ["Time-Quota-Threshold"], ["Volume-Quota-Threshold"],
	 ["Unit-Quota-Threshold"], ["Quota-Holding-Time"],
	 ["Quota-Consumption-Time"], {'*', ["Reporting-Reason"]},
	 ["Trigger"], ["PS-Furnish-Charging-Information"],
	 {'*', ["AVP"]}]},
       {"Additional-Content-Information", 1207, [],
	[["Type-Number"], ["Additional-Type-Information"],
	 ["Content-Size"]]},
       {"Address-Domain", 898, [],
	[["Domain-Name"], ["3GPP-IMSI-MCC-MNC"]]},
       {"Application-Server-Information", 850, [],
	[["Application-Server"],
	 {'*', ["Application-provided-called-party-address"]}]},
       {"Event-Type", 823, [],
	[["SIP-Method"], ["Event"], ["Expires"]]},
       {"IMS-Information", 876, [],
	[{"Node-Functionality"}, ["Event-Type"],
	 ["Role-Of-Node"], ["User-Session-ID"],
	 {'*', ["Calling-Party-Address"]},
	 ["Called-Party-Address"],
	 {'*', ["Called-Asserted-Identity"]},
	 ["Requested-Party-Address"], {'*', ["Associated-URI"]},
	 ["Time-Stamps"],
	 {'*', ["Application-Server-Information"]},
	 {'*', ["Inter-Operator-Identifier"]},
	 ["IMS-Charging-Identifier"],
	 {'*', ["SDP-Session-Description"]},
	 {'*', ["SDP-Media-Component"]},
	 ["Served-Party-IP-Address"], ["Server-Capabilities"],
	 ["Trunk-Group-ID"], ["Bearer-Service"], ["Service-Id"],
	 ["Service-Specific-Data"], {'*', ["Message-Body"]},
	 ["Cause-Code"]]},
       {"Inter-Operator-Identifier", 838, [],
	[["Originating-IOI"], ["Terminating-IOI"]]},
       {"LCS-Client-ID", 1232, [],
	[["LCS-Client-Type"], ["LCS-Client-External-ID"],
	 ["LCS-Client-Dialed-By-MS"], ["LCS-Client-Name"],
	 ["LCS-APN"], ["LCS-Requestor-ID"]]},
       {"LCS-Client-Name", 1235, [],
	[["LCS-Data-Coding-Scheme"], ["LCS-Name-String"],
	 ["LCS-Format-Indicator"]]},
       {"LCS-Information", 878, [],
	[["LCS-Client-ID"], ["Location-Type"],
	 ["Location-Estimate"], ["Positioning-Data"],
	 ["3GPP-IMSI"], ["MSISDN"]]},
       {"LCS-Requestor-ID", 1239, [],
	[["LCS-Data-Coding-Scheme"],
	 ["LCS-Requestor-ID-String"]]},
       {"Location-Type", 1244, [],
	[["Location-Estimate-Type"],
	 ["Deferred-Location-Event-Type"]]},
       {"MBMS-Information", 880, [],
	[["TMGI"], ["MBMS-Service-Type"],
	 ["MBMS-User-Service-Type"], ["File-Repair-Supported"],
	 ["Required-MBMS-Bearer-Capabilities"],
	 ["MBMS-2G-3G-Indicator"], ["RAI"],
	 {'*', ["MBMS-Service-Area"]},
	 ["MBMS-Session-Identity"]]},
       {"Message-Body", 889, [],
	[{"Content-Type"}, {"Content-Length"},
	 ["Content-Disposition"], ["Originator"]]},
       {"Message-Class", 1213, [],
	[["Class-Identifier"], ["Token-Text"]]},
       {"MM-Content-Type", 1203, [],
	[["Type-Number"], ["Additional-Type-Information"],
	 ["Content-Size"],
	 {'*', ["Additional-Content-Information"]}]},
       {"MMS-Information", 877, [],
	[["Originator-Address"], {'*', ["Recipient-Address"]},
	 ["Submission-Time"], ["MM-Content-Type"], ["Priority"],
	 ["Message-ID"], ["Message-Type"], ["Message-Size"],
	 ["Message-Class"], ["Delivery-Report-Requested"],
	 ["Read-Reply-Report-Requested"],
	 ["MMBox-Storage-Requested"], ["Applic-ID"],
	 ["Reply-Applic-ID"], ["Aux-Applic-Info"],
	 ["Content-Class"], ["DRM-Content"], ["Adaptations"],
	 ["VASP-Id"], ["VAS-Id"]]},
       {"Originator-Address", 886, [],
	[["Address-Type"], ["Address-Data"],
	 ["Address-Domain"]]},
       {"PoC-Information", 879, [],
	[["PoC-Server-Role"], ["PoC-Session-Type"],
	 ["Number-Of-Participants"],
	 {'*', ["Participants-Involved"]},
	 {'*', ["Talk-Burst-Exchange"]},
	 ["PoC-Controlling-Address"], ["PoC-Group-Name"],
	 ["PoC-Session-Id"], ["Charged-Party"]]},
       {"PS-Furnish-Charging-Information", 865, [],
	[{"3GPP-Charging-Id"}, {"PS-Free-Format-Data"},
	 ["PS-Append-Free-Format-Data"]]},
       {"PS-Information", 874, [],
	[["3GPP-Charging-Id"], ["3GPP-PDP-Type"],
	 ["PDP-Address"], ["3GPP-GPRS-Negotiated-QoS-Profile"],
	 ["SGSN-Address"], ["GGSN-Address"], ["CG-Address"],
	 ["3GPP-IMSI-MCC-MNC"], ["3GPP-GGSN-MCC-MNC"],
	 ["3GPP-NSAPI"], ["Called-Station-Id"],
	 ["3GPP-Session-Stop-Indicator"],
	 ["3GPP-Selection-Mode"],
	 ["3GPP-Charging-Characteristics"],
	 ["3GPP-SGSN-MCC-MNC"], ["3GPP-MS-TimeZone"],
	 ["Charging-Rule-Base-Name"],
	 ["3GPP-User-Location-Info"], ["3GPP-RAT-Type"],
	 ["PS-Furnish-Charging-Information"],
	 ["PDP-Context-Type"]]},
       {"Recipient-Address", 1201, [],
	[["Address-Type"], ["Address-Data"], ["Address-Domain"],
	 ["Addressee-Type"]]},
       {"SDP-Media-Component", 843, [],
	[["SDP-Media-Name"], {'*', ["SDP-Media-Description"]},
	 ["Media-Initiator-Flag"], ["Authorized-QoS"],
	 ["3GPP-Charging-Id"]]},
       {"Service-Information", 873, [],
	[["PS-Information"], ["WLAN-Information"],
	 ["IMS-Information"], ["MMS-Information"],
	 ["LCS-Information"], ["PoC-Information"],
	 ["MBMS-Information"]]},
       {"Time-Stamps", 833, [],
	[["SIP-Request-Timestamp"],
	 ["SIP-Response-Timestamp"]]},
       {"Trigger", 1264, [], [{'*', ["Trigger-Type"]}]},
       {"WLAN-Information", 875, [],
	[["WLAN-Session-Id"], ["PDG-Address"],
	 ["PDG-Charging-Id"], ["WAG-Address"], ["WAG-PLMN-Id"],
	 ["WLAN-Radio-Container"], ["WLAN-UE-Local-IPAddress"]]},
       {"WLAN-Radio-Container", 892, [],
	[["Operator-Name"], ["Location-Type"],
	 ["Location-Information"], ["WLAN-Technology"]]},
       {"Trunk-Group-ID", 851, [],
	[["Incoming-Trunk-Group-ID"],
	 ["Outgoing-Trunk-Group-ID"]]}]},
     {id, 4},
     {import_avps,
      [{diameter_gen_base_rfc3588,
	[{"Accounting-Realtime-Required", 483, "Enumerated",
	  "M"},
	 {"Accounting-Record-Number", 485, "Unsigned32", "M"},
	 {"Accounting-Record-Type", 480, "Enumerated", "M"},
	 {"Accounting-Sub-Session-Id", 287, "Unsigned64", "M"},
	 {"Acct-Application-Id", 259, "Unsigned32", "M"},
	 {"Acct-Interim-Interval", 85, "Unsigned32", "M"},
	 {"Acct-Multi-Session-Id", 50, "UTF8String", "M"},
	 {"Acct-Session-Id", 44, "OctetString", "M"},
	 {"Auth-Application-Id", 258, "Unsigned32", "M"},
	 {"Auth-Grace-Period", 276, "Unsigned32", "M"},
	 {"Auth-Request-Type", 274, "Enumerated", "M"},
	 {"Auth-Session-State", 277, "Enumerated", "M"},
	 {"Authorization-Lifetime", 291, "Unsigned32", "M"},
	 {"Class", 25, "OctetString", "M"},
	 {"Destination-Host", 293, "DiameterIdentity", "M"},
	 {"Destination-Realm", 283, "DiameterIdentity", "M"},
	 {"Disconnect-Cause", 273, "Enumerated", "M"},
	 {"E2E-Sequence", 300, "Grouped", "M"},
	 {"Error-Message", 281, "UTF8String", []},
	 {"Error-Reporting-Host", 294, "DiameterIdentity", []},
	 {"Event-Timestamp", 55, "Time", "M"},
	 {"Experimental-Result", 297, "Grouped", "M"},
	 {"Experimental-Result-Code", 298, "Unsigned32", "M"},
	 {"Failed-AVP", 279, "Grouped", "M"},
	 {"Firmware-Revision", 267, "Unsigned32", []},
	 {"Host-IP-Address", 257, "Address", "M"},
	 {"Inband-Security-Id", 299, "Unsigned32", "M"},
	 {"Multi-Round-Time-Out", 272, "Unsigned32", "M"},
	 {"Origin-Host", 264, "DiameterIdentity", "M"},
	 {"Origin-Realm", 296, "DiameterIdentity", "M"},
	 {"Origin-State-Id", 278, "Unsigned32", "M"},
	 {"Product-Name", 269, "UTF8String", []},
	 {"Proxy-Host", 280, "DiameterIdentity", "M"},
	 {"Proxy-Info", 284, "Grouped", "M"},
	 {"Proxy-State", 33, "OctetString", "M"},
	 {"Re-Auth-Request-Type", 285, "Enumerated", "M"},
	 {"Redirect-Host", 292, "DiameterURI", "M"},
	 {"Redirect-Host-Usage", 261, "Enumerated", "M"},
	 {"Redirect-Max-Cache-Time", 262, "Unsigned32", "M"},
	 {"Result-Code", 268, "Unsigned32", "M"},
	 {"Route-Record", 282, "DiameterIdentity", "M"},
	 {"Session-Binding", 270, "Unsigned32", "M"},
	 {"Session-Id", 263, "UTF8String", "M"},
	 {"Session-Server-Failover", 271, "Enumerated", "M"},
	 {"Session-Timeout", 27, "Unsigned32", "M"},
	 {"Supported-Vendor-Id", 265, "Unsigned32", "M"},
	 {"Termination-Cause", 295, "Enumerated", "M"},
	 {"User-Name", 1, "UTF8String", "M"},
	 {"Vendor-Id", 266, "Unsigned32", "M"},
	 {"Vendor-Specific-Application-Id", 260, "Grouped",
	  "M"}]}]},
     {import_enums,
      [{diameter_gen_base_rfc3588,
	[{"Disconnect-Cause",
	  [{"REBOOTING", 0}, {"BUSY", 1},
	   {"DO_NOT_WANT_TO_TALK_TO_YOU", 2}]},
	 {"Redirect-Host-Usage",
	  [{"DONT_CACHE", 0}, {"ALL_SESSION", 1},
	   {"ALL_REALM", 2}, {"REALM_AND_APPLICATION", 3},
	   {"ALL_APPLICATION", 4}, {"ALL_HOST", 5},
	   {"ALL_USER", 6}]},
	 {"Auth-Request-Type",
	  [{"AUTHENTICATE_ONLY", 1}, {"AUTHORIZE_ONLY", 2},
	   {"AUTHORIZE_AUTHENTICATE", 3}]},
	 {"Auth-Session-State",
	  [{"STATE_MAINTAINED", 0}, {"NO_STATE_MAINTAINED", 1}]},
	 {"Re-Auth-Request-Type",
	  [{"AUTHORIZE_ONLY", 0}, {"AUTHORIZE_AUTHENTICATE", 1}]},
	 {"Termination-Cause",
	  [{"LOGOUT", 1}, {"SERVICE_NOT_PROVIDED", 2},
	   {"BAD_ANSWER", 3}, {"ADMINISTRATIVE", 4},
	   {"LINK_BROKEN", 5}, {"AUTH_EXPIRED", 6},
	   {"USER_MOVED", 7}, {"SESSION_TIMEOUT", 8}]},
	 {"Session-Server-Failover",
	  [{"REFUSE_SERVICE", 0}, {"TRY_AGAIN", 1},
	   {"ALLOW_SERVICE", 2}, {"TRY_AGAIN_ALLOW_SERVICE", 3}]},
	 {"Accounting-Record-Type",
	  [{"EVENT_RECORD", 1}, {"START_RECORD", 2},
	   {"INTERIM_RECORD", 3}, {"STOP_RECORD", 4}]},
	 {"Accounting-Realtime-Required",
	  [{"DELIVER_AND_GRANT", 1}, {"GRANT_AND_STORE", 2},
	   {"GRANT_AND_LOSE", 3}]}]}]},
     {import_groups,
      [{diameter_gen_base_rfc3588,
	[{"Proxy-Info", 284, [],
	  [{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
	 {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
	 {"Experimental-Result", 297, [],
	  [{"Vendor-Id"}, {"Experimental-Result-Code"}]},
	 {"Vendor-Specific-Application-Id", 260, [],
	  [{'*', {"Vendor-Id"}}, ["Auth-Application-Id"],
	   ["Acct-Application-Id"]]},
	 {"E2E-Sequence", 300, [], [{{2, '*'}, {"AVP"}}]}]}]},
     {inherits, [{"diameter_gen_base_rfc3588", []}]},
     {messages,
      [{"CCR", 272, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Auth-Application-Id"},
	 {"Service-Context-Id"}, {"CC-Request-Type"},
	 {"CC-Request-Number"}, ["Destination-Host"],
	 ["User-Name"], ["CC-Sub-Session-Id"],
	 ["Acct-Multi-Session-Id"], ["Origin-State-Id"],
	 ["Event-Timestamp"], {'*', ["Subscription-Id"]},
	 ["Service-Identifier"], ["Termination-Cause"],
	 ["Requested-Service-Unit"], ["Requested-Action"],
	 {'*', ["Used-Service-Unit"]},
	 ["Multiple-Services-Indicator"],
	 {'*', ["Multiple-Services-Credit-Control"]},
	 {'*', ["Service-Parameter-Info"]},
	 ["CC-Correlation-Id"], ["User-Equipment-Info"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 ["Service-Information"], {'*', ["AVP"]}]},
       {"CCA", 272, ['PXY'], [],
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Auth-Application-Id"},
	 {"CC-Request-Type"}, {"CC-Request-Number"},
	 ["User-Name"], ["CC-Session-Failover"],
	 ["CC-Sub-Session-Id"], ["Acct-Multi-Session-Id"],
	 ["Origin-State-Id"], ["Event-Timestamp"],
	 ["Granted-Service-Unit"],
	 {'*', ["Multiple-Services-Credit-Control"]},
	 ["Cost-Information"], ["Final-Unit-Indication"],
	 ["Check-Balance-Result"],
	 ["Credit-Control-Failure-Handling"],
	 ["Direct-Debiting-Failure-Handling"], ["Validity-Time"],
	 {'*', ["Redirect-Host"]}, ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["Failed-AVP"]},
	 ["Service-Information"], {'*', ["AVP"]}]}]},
     {vendor, {10415, "TGPP"}}].


