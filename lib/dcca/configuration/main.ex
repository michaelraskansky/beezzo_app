defmodule Dcca.Configuration.Main do

  def get_opts do
    IO.puts "#{__MODULE__}.get_opts"
    ip = {127,0,0,1}
    port = 3868
    transportModule = :diameter_tcp
    originHost = "ocs.beezz.mobi"
    originRealm = "beezz.mobi"
    vendorId = 10415
    productName = "ocs"
    base_app = [alias: "base", dictionary: :diameter_gen_base_rfc3588, module: :Dcca.App.Base]
    dcca_app = [alias: "ro_rel6", dictionary: :ro_rel6, module: :Dcca.App.Ro]
    applications = [base_app, dcca_app]

    stackOpts = [
      "Origin-Host": originHost,
      "Origin-Realm": originRealm,
      "Vendor-Id": vendorId,
      "Product-Name": productName,
      "Auth-Application-Id": applications |> Enum.map(&(Keyword.get(&1, :dictionary))) |> Enum.map(&(&1.id)),
      "application": base_app,
      "application": dcca_app
    ]

    transportOpts = [
      "transport_module": transportModule,
      "transport_config": [reuseaddr: true, ip: ip, port: port]
    ]
    {transportOpts, stackOpts}
  end
  def get_origin_host do
    elem(get_opts, 1) |> Keyword.get :"Origin-Host"
  end
  def get_origin_realm do
    elem(get_opts, 1) |> Keyword.get :"Origin-Realm"
  end
  def get_auth_app_id do
    elem(get_opts, 1) |> Keyword.get(:"Auth-Application-Id") |> List.last
  end
end
