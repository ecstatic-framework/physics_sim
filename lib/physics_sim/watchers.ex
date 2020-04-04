defmodule PhysicsSim.Watchers do
  use Ecstatic.Watcher
  alias PhysicsSim.ECS.Component
  alias PhysicsSim.ECS.System

  watch Component.Physical do
    run System.UpdatePhysicsWorld, [every: 1000, for: :infinity]
  end
end
