require_relative 'board'

class Piece
  attr_accessor :current_pos

  def initialize(start_pos)
    @current_pos = start_pos
  end

  def valid_moves
    [[0,1]]
  end
end

class SlidingPiece < Piece
end

class SteppingPiece < Piece
end

class Bishop < SlidingPiece
end

class Rook < SlidingPiece
end

class Queen < SlidingPiece
end

class Knight < SteppingPiece
end

class King < SteppingPiece
end
