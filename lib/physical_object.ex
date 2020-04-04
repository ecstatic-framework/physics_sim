defmodule PhysicalObject do 
  defstruct [
    position: %Vector2{}, 
    velocity: %Vector2{}, 
    acceleration: %Vector2{}
  ]
end
