defmodule ESI.Mixfile do
  use Mix.Project

  @version "0.1.2"

  def project do
    [
      app: :esi,
      version: @version,
      elixir: "~> 1.12",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/ajaxify/esi",
      homepage_url: "https://github.com/ajaxify/esi",
      description: description(),
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :hackney]]
  end

  defp docs do
    [extras: ["README.md"]]
  end

  defp description do
    "Elixir support for EveOnline Swagger Interface (ESI)"
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:hackney, "~> 1.18"},
      {:poison, "~> 5.0"},
      {:ex_doc, "~> 0.26.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Ajaxify"],
      licenses: ["MIT"],
      links: %{GitHub: "https://github.com/ajaxify/esi"}
    ]
  end
end
