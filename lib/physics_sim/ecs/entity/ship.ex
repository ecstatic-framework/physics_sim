defmodule PhysicsSim.ECS.Entity.Ship do 
  use Ecstatic.Entity
  alias PhysicsSim.ECS.Component
  @default_components [Component.Physical]
end
