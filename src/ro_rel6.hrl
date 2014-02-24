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

-hrl_name('ro_rel6.hrl').

%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-record('Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('E2E-Sequence', {'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-define('CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-define('CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-define('CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-define('CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-define('CC-SESSION-FAILOVER_SUPPORTED', 1).
-define('CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-define('CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-define('CREDIT-CONTROL_AUTHORIZATION', 0).
-define('CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-define('CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-define('CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-define('CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-define('DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-define('DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-define('TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-define('TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-define('TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-define('CC-UNIT-TYPE_TIME', 0).
-define('CC-UNIT-TYPE_MONEY', 1).
-define('CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-define('CC-UNIT-TYPE_INPUT-OCTETS', 3).
-define('CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-define('CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-define('FINAL-UNIT-ACTION_TERMINATE', 0).
-define('FINAL-UNIT-ACTION_REDIRECT', 1).
-define('FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-define('REDIRECT-ADDRESS-TYPE_IPV4', 0).
-define('REDIRECT-ADDRESS-TYPE_IPV6', 1).
-define('REDIRECT-ADDRESS-TYPE_URL', 2).
-define('REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-define('MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-define('MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-define('REQUESTED-ACTION_DIRECT_DEBITING', 0).
-define('REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-define('REQUESTED-ACTION_CHECK_BALANCE', 2).
-define('REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-define('SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-define('SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-define('SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-define('SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-define('SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-define('USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-define('USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-define('USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-define('USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-define('ADAPTATIONS_YES', 0).
-define('ADAPTATIONS_NO', 1).
-define('ADDRESS-TYPE_E_MAIL_ADDRESS', 0).
-define('ADDRESS-TYPE_MSISDN', 1).
-define('ADDRESS-TYPE_IPV4_ADDRESS', 2).
-define('ADDRESS-TYPE_IPV6_ADDRESS', 3).
-define('ADDRESS-TYPE_NUMERIC_SHORTCODE', 4).
-define('ADDRESS-TYPE_ALPHANUMERIC_SHORTCODE', 5).
-define('ADDRESS-TYPE_OTHER', 6).
-define('ADDRESSEE-TYPE_TO', 0).
-define('ADDRESSEE-TYPE_CC', 1).
-define('ADDRESSEE-TYPE_BCC', 2).
-define('CLASS-IDENTIFIER_PERSONAL', 0).
-define('CLASS-IDENTIFIER_ADVERDISMENT', 1).
-define('CLASS-IDENTIFIER_INFORMATIONAL', 2).
-define('CLASS-IDENTIFIER_AUTO', 3).
-define('CONTENT-CLASS_TEXT', 0).
-define('CONTENT-CLASS_IMAGE_BASIC', 1).
-define('CONTENT-CLASS_IMAGE_RICH', 2).
-define('CONTENT-CLASS_VIDEO_BASIC', 3).
-define('CONTENT-CLASS_VIDEO_RICH', 4).
-define('CONTENT-CLASS_MEGAPIXEL', 5).
-define('CONTENT-CLASS_CONTENT_BASIC', 6).
-define('CONTENT-CLASS_CONTENT_RICH', 7).
-define('DELIVERY-REPORT-REQUESTED_NO', 0).
-define('DELIVERY-REPORT-REQUESTED_YES', 1).
-define('DRM-CONTENT_NO', 0).
-define('DRM-CONTENT_YES', 1).
-define('FILE-REPAIR-SUPPORTED_SUPPORTED', 1).
-define('FILE-REPAIR-SUPPORTED_NOT_SUPPORTED', 2).
-define('LCS-CLIENT-TYPE_EMERGENCY_SERVICES', 0).
-define('LCS-CLIENT-TYPE_VALUE_ADDED_SERVICES', 1).
-define('LCS-CLIENT-TYPE_PLMN_OPERATOR_SERVICES', 2).
-define('LCS-CLIENT-TYPE_LAWFUL_INTERCEPT_SERVICES', 3).
-define('LCS-FORMAT-INDICATOR_LOGICAL_NAME', 0).
-define('LCS-FORMAT-INDICATOR_EMAIL_ADDRESS', 1).
-define('LCS-FORMAT-INDICATOR_MSISDN', 2).
-define('LCS-FORMAT-INDICATOR_URL', 3).
-define('LCS-FORMAT-INDICATOR_SIP_URL', 4).
-define('LOCATION-ESTIMATE-TYPE_CURRENT_LOCATION', 0).
-define('LOCATION-ESTIMATE-TYPE_CURRENT_LAST_KNOWN_LOCATION', 1).
-define('LOCATION-ESTIMATE-TYPE_INITIAL_LOCATION', 2).
-define('LOCATION-ESTIMATE-TYPE_ACTIVATE_DEFERRED_LOCATION', 3).
-define('LOCATION-ESTIMATE-TYPE_CANCEL_DEFERRED_LOCATION', 4).
-define('MEDIA-INITIATOR-FLAG_CALLED_PARTY', 0).
-define('MEDIA-INITIATOR-FLAG_CALLING_PARTY', 1).
-define('MEDIA-INITIATOR-FLAG_UNKNOWN', 2).
-define('MBMS-SERVICE-TYPE_MULTICAST', 0).
-define('MBMS-SERVICE-TYPE_BROADCAST', 1).
-define('MBMS-USER-SERVICE-TYPE_DOWNLOAD', 0).
-define('MBMS-USER-SERVICE-TYPE_STREAMING', 1).
-define('MBMS-2G-3G-INDICATOR_2G', 0).
-define('MBMS-2G-3G-INDICATOR_3G', 1).
-define('MBMS-2G-3G-INDICATOR_2G_AND_3G', 2).
-define('MESSAGE-TYPE_M_SEND_REQ', 1).
-define('MESSAGE-TYPE_M_SEND_CONF', 2).
-define('MESSAGE-TYPE_M_NOTIFICATION_IND', 3).
-define('MESSAGE-TYPE_M_NOTIFYRESP_IND', 4).
-define('MESSAGE-TYPE_M_RETRIEVE_CONF', 5).
-define('MESSAGE-TYPE_M_ACKNOWLEDGE_IND', 6).
-define('MESSAGE-TYPE_M_DELIVERY_IND', 7).
-define('MESSAGE-TYPE_M_READ_REC_IND', 8).
-define('MESSAGE-TYPE_M_READ_ORIG_IND', 9).
-define('MESSAGE-TYPE_M_FORWARD_REQ', 10).
-define('MESSAGE-TYPE_M_FORWARD_CONF', 11).
-define('MESSAGE-TYPE_M_MBOX_STORE_CONF', 12).
-define('MESSAGE-TYPE_M_MBOX_VIEW_CONF', 13).
-define('MESSAGE-TYPE_M_MBOX_UPLOAD_CONF', 14).
-define('MESSAGE-TYPE_M_MBOX_DELETE_CONF', 15).
-define('MMBOX-STORAGE-REQUESTED_NO', 0).
-define('MMBOX-STORAGE-REQUESTED_YES', 1).
-define('NODE-FUNCTIONALITY_S-CSCF', 0).
-define('NODE-FUNCTIONALITY_P-CSCF', 1).
-define('NODE-FUNCTIONALITY_I-CSCF', 2).
-define('NODE-FUNCTIONALITY_MRFC', 3).
-define('NODE-FUNCTIONALITY_MGCF', 4).
-define('NODE-FUNCTIONALITY_BGCF', 5).
-define('NODE-FUNCTIONALITY_AS', 6).
-define('ORIGINATOR_CALLING_PARTY', 0).
-define('ORIGINATOR_CALLED_PARTY', 1).
-define('PDP-CONTEXT-TYPE_PRIMARY', 0).
-define('PDP-CONTEXT-TYPE_SECONDARY', 1).
-define('POC-SERVER-ROLE_PARTICIPATING_POC_SERVER', 0).
-define('POC-SERVER-ROLE_CONTROLLING_POC_SERVER', 1).
-define('POC-SESSION-TYPE_1_TO_1_POC_SESSION', 0).
-define('POC-SESSION-TYPE_CHAT_POC_GROUP_SESSION', 1).
-define('POC-SESSION-TYPE_PRE_ARRANGED_POC_GROUP_SESSION', 2).
-define('POC-SESSION-TYPE_AD_HOC_POC_GROUP_SESSION', 3).
-define('PRIORITY_LOW', 0).
-define('PRIORITY_NORMAL', 1).
-define('PRIORITY_HIGH', 2).
-define('PS-APPEND-FREE-FORMAT-DATA_APPEND', 0).
-define('PS-APPEND-FREE-FORMAT-DATA_OVERWRITE', 1).
-define('READ-REPLY-REPORT-REQUESTED_NO', 0).
-define('READ-REPLY-REPORT-REQUESTED_YES', 1).
-define('REPORTING-REASON_THRESHOLD', 0).
-define('REPORTING-REASON_QHT', 1).
-define('REPORTING-REASON_FINAL', 2).
-define('REPORTING-REASON_QUOTA_EXHAUSTED', 3).
-define('REPORTING-REASON_VALIDITY_TIME', 4).
-define('REPORTING-REASON_OTHER_QUOTA_TYPE', 5).
-define('REPORTING-REASON_RATING_CONDITION_CHANGE', 6).
-define('REPORTING-REASON_FORCED_REAUTHORISATION', 7).
-define('REPORTING-REASON_POOL_EXHAUSTED', 8).
-define('ROLE-OF-NODE_ORIGINATING_ROLE', 0).
-define('ROLE-OF-NODE_TERMINATING_ROLE', 1).
-define('ROLE-OF-NODE_PROXY_ROLE', 2).
-define('ROLE-OF-NODE_B2BUA_ROLE', 3).
-define('TRIGGER-TYPE_CHANGE_IN_SGSN_IP_ADDRESS', 1).
-define('TRIGGER-TYPE_CHANGE_IN_QOS', 2).
-define('TRIGGER-TYPE_CHANGE_IN_LOCATION', 3).
-define('TRIGGER-TYPE_CHANGE_IN_RAT', 4).
-define('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_CLASS', 10).
-define('TRIGGER-TYPE_CHANGEINQOS_RELIABILITY_CLASS', 11).
-define('TRIGGER-TYPE_CHANGEINQOS_DELAY_CLASS', 12).
-define('TRIGGER-TYPE_CHANGEINQOS_PEAK_THROUGHPUT', 13).
-define('TRIGGER-TYPE_CHANGEINQOS_PRECEDENCE_CLASS', 14).
-define('TRIGGER-TYPE_CHANGEINQOS_MEAN_THROUGHPUT', 15).
-define('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK', 16).
-define('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK', 17).
-define('TRIGGER-TYPE_CHANGEINQOS_RESIDUAL_BER', 18).
-define('TRIGGER-TYPE_CHANGEINQOS_SDU_ERROR_RATIO', 19).
-define('TRIGGER-TYPE_CHANGEINQOS_TRANSFER_DELAY', 20).
-define('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY', 21).
-define('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK', 22).
-define('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK', 23).
-define('TRIGGER-TYPE_CHANGEINLOCATION_MCC', 30).
-define('TRIGGER-TYPE_CHANGEINLOCATION_MNC', 31).
-define('TRIGGER-TYPE_CHANGEINLOCATION_RAC', 32).
-define('TRIGGER-TYPE_CHANGEINLOCATION_LAC', 33).
-define('TRIGGER-TYPE_CHANGEINLOCATION_CELLID', 34).
-define('TRIGGER-TYPE_CHANGE_IN_MEDIA_COMPOSITION', 40).
-define('TRIGGER-TYPE_CHANGEINPARTICIPANTS_NUMBER', 50).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('RESULT-CODE_END_USER_SERVICE_DENIED', 4010).
-define('RESULT-CODE_CREDIT_CONTROL_NOT_APPLICABLE', 4011).
-define('RESULT-CODE_CREDIT_LIMIT_REACHED', 4012).
-define('RESULT-CODE_USER_UNKNOWN', 5030).
-define('RESULT-CODE_RATING_FAILED', 5031).



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-ifndef('DISCONNECT-CAUSE_REBOOTING').
-define('DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DISCONNECT-CAUSE_BUSY').
-define('DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_DONT_CACHE').
-define('REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_SESSION').
-define('REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_REALM').
-define('REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_HOST').
-define('REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_USER').
-define('REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('TERMINATION-CAUSE_LOGOUT').
-define('TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('TERMINATION-CAUSE_BAD_ANSWER').
-define('TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('TERMINATION-CAUSE_ADMINISTRATIVE').
-define('TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('TERMINATION-CAUSE_LINK_BROKEN').
-define('TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('TERMINATION-CAUSE_AUTH_EXPIRED').
-define('TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('TERMINATION-CAUSE_USER_MOVED').
-define('TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.

