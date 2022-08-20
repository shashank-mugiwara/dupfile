defmodule Dupfile.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [Dupfile.Results, {Dupfile.Pathfinder, "."}]

    opts = [strategy: :one_for_one, name: Dupfile.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
