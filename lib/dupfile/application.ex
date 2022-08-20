defmodule Dupfile.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Dupfile.Results,
      {Dupfile.Pathfinder, "."},
      Dupfile.WorkerSupervisor,
      {Dupfile.Gatherer, 1}
    ]

    opts = [strategy: :one_for_all, name: Dupfile.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
