class Point
  attr_reader :x, :y

  def initialize(position)
    @x = calcX(position)
    @y = calcY(position)
  end

  def calcX(position)
    (position - 1) / 8
  end

  def calcY(position)
    (position - 1) % 8
  end

  def ==(other_point)
    self.x == other_point.x && self.y == other_point.y
  end
end
