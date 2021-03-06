defmodule HomeServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :home_server,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {HomeServer,[]}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dhcp_server, "~> 0.7.0"}
    ]
  end
end
