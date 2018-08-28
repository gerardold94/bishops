require 'point'

class Bishop
  def initialize(source, destination)
    @source = Point.new(source)
    @destination = Point.new(destination)
  end

  def valid_move
    (@source.x + @source.y) % 2 === (@destination.x + @destination.y) % 2
  end

  def moves
    return 0 if @source === @destination
    return -1 unless valid_move
    return 1 if same_diagonal
    2
  end

  def same_diagonal
    return (@destination.x - @source.x).abs == (@destination.y - @source.y).abs
  end
end
