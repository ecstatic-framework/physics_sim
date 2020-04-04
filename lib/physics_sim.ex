defmodule PhysicsSim do
  
  alias PhysicsSim.ECS.Entity
  alias PhysicsSim.ECS.Component

  defstruct [
    player_ship: nil
  ]

  use GenServer

  def start_link(opts) do 
    GenServer.start_link(__MODULE__, opts, [name: __MODULE__])
  end

  def init(_opts) do 
    state = 
      %PhysicsSim{} |> 
      init_player_ship(%Vector2{x: 1, y: 5})
    {:ok, state}
  end

  defp init_player_ship(state, acceleration) do
    comp = Component.Physical.new(%PhysicalObject{acceleration: acceleration})
    {:ok, pship} = Entity.Ship.new([comp])
    %{state | player_ship: pship.id} 
  end

end
