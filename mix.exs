defmodule Signalrex.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :signalrex,
      version: @version,
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      docs: [
        main: "readme", 
        source_ref: "v#{@version}",
        extras: ["README.md"],
        source_url: "https://github.com/mendrugory/signalrex"
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    Signalrex is a signalr client library written in Elixir.
    """
  end  

  defp deps do
    [
      {:poison, "~> 4.0.0"},
      {:tesla, "~> 0.9.0"},
      {:enchufeweb, github: "mendrugory/enchufeweb"},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [name: :signalrex,
     maintainers: ["Gonzalo Jiménez Fuentes"],
     licenses: ["MIT License"],
     links: %{"GitHub" => "https://github.com/mendrugory/signalrex"}]
  end  
end
