Code.require_file "diameter_records.ex", "include"
Code.require_file "base_records.ex", "include"
Code.require_file "dcca_records.ex", "include"

defmodule Dcca.Stack do
  use GenServer.Behaviour

  def start_link(opts) do
    :gen_server.start_link({:local, :stack}, __MODULE__, [opts], [])
  end

  def init(_opts) do

    svcName = "rfc4006"
    svcDict = :rfc4006_cc
    svcMod  = :Dcca.App.Gy
    originHost = "dcca.beezz.mobi"
    originRealm = "beezz.mobi"
    vendorId = 10415
    productName = "ocs"
    dccaApplicationId = 4
    transportModule = :diameter_tcp
    ip = {127,0,0,1}
    port = 3868
    #vendorSpecific = :"Vendor-Specific-Application-Id".new("Vendor-Id": 10415, "Auth-Application-Id": 4)

    baseOpts = [
      "Origin-Host": originHost,
      "Origin-Realm": originRealm,
      "Vendor-Id": 0,
      "Product-Name": productName,
      "Auth-Application-Id": [0],
      "application": [alias: "base", dictionary: :diameter_gen_base_rfc3588, module: :Dcca.App.Base]
    ]

    svcOpts = [
      "Origin-Host": originHost, 
      "Origin-Realm": originRealm,
      "Vendor-Id": vendorId,
      "Product-Name": productName,
      #"Vendor-Specific-Application-Id": vendorSpecific,
      "Auth-Application-Id": [dccaApplicationId],
      "application": [alias: svcName, dictionary: svcDict, module: svcMod]
    ]

    transportOpts = [
      "transport_module": transportModule,
      "transport_config": [reuseaddr: true, ip: ip, port: port]
    ]
    
    :diameter.start_service svcName, svcOpts
    :diameter.start_service "base", baseOpts

    :diameter.add_transport svcName, {:listen, transportOpts}
    :diameter.add_transport "base", {:listen, transportOpts}
  end
end
