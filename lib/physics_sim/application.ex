defmodule PhysicsSim.Application do
  use Application

  def start(_type, _args) do
    Supervisor.start_link(children(), [name: PhysicsSim.Supervisor, strategy: :one_for_one])
  end

  def children do 
    [
      Ecstatic.Supervisor,
      {PhysicsSim, []}
    ]
  end
end
