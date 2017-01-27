defmodule Exsyslog.Mixfile do
  use Mix.Project

  def project do
    [app: :exsyslog,
     version: "1.0.1+3",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [
      applications: [:poison],
      included_applications: [:syslog],
    ]
  end

  defp description do
    """
    ExSyslog is a Elixir Logger custom backend to syslog.
    """
  end

  defp package do
    [ files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Bruno Tavares"],
      licenses: ["MIT"],
      links: %{"GitHub": "https://github.com/22cans/exsyslog"} ]
  end

  defp deps do
    [{:syslog, "~> 1.0"},
     {:ex_doc, "~> 0.11", only: :dev},
     {:earmark, "~> 0.2", only: :dev},
     {:poison, "~> 1.4 or ~> 2.1 or ~> 3.0"}
    ]
  end
end
