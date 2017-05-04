defmodule PusherClient.Mixfile do
  use Mix.Project

  def project do
    [ app: :pusher_client,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps ]
  end

  def application do
    [ applications: [ :logger ] ]
  end

  defp deps do
    [ {:websocket_client, git: "https://github.com/sanmiguel/websocket_client", branch: "master"},
      { :exjsx, "~> 4.0" },
      { :meck, "~> 0.8.2", only: :test } ]
  end
end
