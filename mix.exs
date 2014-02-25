defmodule Dcca.Mixfile do
  use Mix.Project

  def project do
    [
      erlc_paths: ["src", "other"], 
      erlc_options: [:report, :verbose]
    ]
    [compile_path: "ebin"]
    [ app: :dcca,
      version: "0.0.1",
      elixir: "~> 0.12.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Dcca, [] }, 
      applications: [
        :diameter
        #:cberl
      ]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      { :cberl, github: "chitika/cberl" },
      { :ej, github: "seth/ej" },
    ]
  end
end
