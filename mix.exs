defmodule Koans.Mixfile do
  use Mix.Project

  def project do
    [app: :Koans,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :dev,
     start_permanent: Mix.env == :dev,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:mix_test_watch, "~> 0.2"}, 
      # {:fs, "~> 0.9.2"}
    ]
  end
end