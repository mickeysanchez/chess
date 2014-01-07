require_relative 'board'

class Piece
  attr_accessor :current_pos

  def initialize(start_pos)
    @current_pos = start_pos
  end

  def valid_moves
    ["a2"]
  end
end

class SlidingPiece < Piece
end

class SteppingPiece < Piece
end

class Bishop < SlidingPiece
end

class Rook < SlidingPiece
  attr_reader :icon

  def initialize(start_pos)
    super(start_pos)
    @icon = "\u2656"
  end
end

class Queen < SlidingPiece
end

class Knight < SteppingPiece
end

class King < SteppingPiece
end
