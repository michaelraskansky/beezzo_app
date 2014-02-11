defmodule Dcca.Stack do
  use GenServer.Behaviour

  def start_link(opts) do
    :gen_server.start_link({:local, :stack}, __MODULE__, [opts], [])
  end

  def init(opts) do
    svcName = "rfc4006"
    svcDict = :rfc4006_cc
    svcMod  = :Dcca.Application
    originHost = "dcca.beezz.mobi"
    originRealm = "beezz.mobi"
    vendorId = 10415
    productName = "ocs"
    dccaApplicationId = 4
    transportModule = :diameter_tcp
    ip = {127,0,0,1}
    port = 3868

    dcca = [
      alias: svcName, 
      dictionary: svcDict, 
      module: svcMod
    ]

    svcOpts = [
      "Origin-Host": originHost, 
      "Origin-Realm": originRealm,
      "Vendor-Id": vendorId,
      "Product-Name": productName,
      "Auth-Application-Id": [dccaApplicationId],
      "application": dcca
    ]

    transportOpts = [
      "transport_module": transportModule,
      "transport_config": [reuseaddr: true, ip: ip, port: port]
    ]
    
    :diameter.start_service svcName, svcOpts
    :diameter.add_transport svcName, {:listen, transportOpts}
  end
end
