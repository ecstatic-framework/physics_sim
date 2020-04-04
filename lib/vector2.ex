defmodule Vector2 do
  defstruct x: 0, y: 0

  def add(vec1, vec2) do 
    %Vector2{x: (vec1.x + vec2.x), y: (vec1.y + vec2.y)}
  end
end
