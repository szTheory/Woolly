defmodule Woolly.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :woolly,
     name: "Woolly",
     version: @version,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: docs,
     deps: deps,
     package: package]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev}]
  end

  defp docs do
    [
      description: """
        Woolly is a text mining and natural language
        toolkit for the Elixir programming language.
      """,
      extras: [
        "info/CONTRIBUTING.md",
        "info/FAQs.md",
        "info/LICENSE.md",
      ],
      homepage_url: "http://github.com/pjhampton/Woolly",
      source_url: "http://github.com/pjhampton/Woolly",
    ]
  end

  defp package do
    [
      maintainers: ["PJ Hampton"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/pjhampton/Woolly"},
      files: ~w( lib resources test mix.exs README.md )
    ] 
  end
end
