defmodule PhysicsSim.ECS.System.UpdatePhysicsWorld do 
  require Logger
  alias PhysicsSim.ECS.Component.Physical
  use Ecstatic.System

  def aspect, do: %Ecstatic.Aspect{with: [Physical]}

  def dispatch(entity, _changes), do: dispatch(entity)
  def dispatch(entity) do
    %Ecstatic.Component{state: physical_state} = physical = Ecstatic.Entity.find_component(entity, Physical)

    updated_velocity = Vector2.add(physical_state.velocity, physical_state.acceleration)
    update_position = Vector2.add(physical_state.velocity, physical_state.position)

    new_physical = %{physical | state: %{physical_state | velocity: updated_velocity, position: update_position}}
    %Ecstatic.Changes{updated: [new_physical]}
  end

end
