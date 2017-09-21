defmodule Gendex.Mixfile do
  use Mix.Project

  @version "0.5.1"
  @url "https://github.com/dre1080/gendex"
  @docs_url "http://hexdocs.pm/gendex"

  def project do
    [app: :gendex,
     version: @version,
     name: "Gendex",
     package: package(),
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description(),
     deps: deps(),
     docs: docs()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [mod: {Gendex, []},
     applications: [:logger]]
  end

  defp deps() do
    [{:credo, "~> 0.3", only: [:dev, :test]},
     {:ex_doc, "~> 0.1", only: :dev},
     {:earmark, ">= 0.0.0", only: :dev}]
  end

  defp docs() do
    [extras: docs_extras(), main: "readme"]
  end

  defp docs_extras() do
    ["README.md"]
  end

  defp description() do
    "Gendex tells you the most likely gender of a person based on first name."
  end

  defp package() do
    [files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["andö"],
      licenses: ["MIT"],
      links: %{"GitHub" => @url, "Docs" => @docs_url}]
  end
end
