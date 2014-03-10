class Parcel

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    cost_to_ship = volume * 2
  end
end
