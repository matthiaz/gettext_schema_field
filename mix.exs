defmodule GettextSchemaField.MixProject do
  use Mix.Project

  @version "0.2.2"

  def project do
    [
      app: :gettext_schema_field_ng,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      source_url: "https://github.com/matthiaz/gettext_schema_field",
      description: """
      GettextSchemaField can be use to for the internationalization of schema fields with Gettext.
      """
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:gettext, "~> 0.26"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["matthiaz"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/matthiaz/gettext_schema_field"}
    ]
  end

  defp docs do
    [
      name: "Gettext Schema Field",
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}",
      source_url: "https://github.com/matthiaz/gettext_schema_field",
    ]
  end
end
