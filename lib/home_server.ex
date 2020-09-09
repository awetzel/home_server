defmodule HomeServer do
  use Application
  def start(_,_) do
    Supervisor.start_link([
        {DHCPServer, ["enp0s3", [
           gateway: "192.168.0.254",
           netmask: "255.255.0.0",
           range: {"192.168.1.1", "192.168.9.254"},
           domain_servers: ["192.168.0.254"]
         ]]}
      ], strategy: :one_for_one, name: __MODULE__)
  end
end
