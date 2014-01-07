require_relative 'board'

class Piece
  attr_accessor :current_pos

  def initialize(start_pos, board)
    @current_pos = start_pos
    board.update(start_pos, self)
  end

  def move(pos_move, board)
    # can i move there?
    # if so: board.update(pos_move, self)
  end

  def moves
    possible_moves
  end
end

class SlidingPiece < Piece
end

class SteppingPiece < Piece
end

class Bishop < SlidingPiece
end

class Rook < SlidingPiece
  def initialize
    super(start_pos, board)
  end
end

class Queen < SlidingPiece
end

class Knight < SteppingPiece
end

class King < SteppingPiece
end