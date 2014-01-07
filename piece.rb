require_relative 'board'

class Piece
  attr_reader :icon, :color

  def initialize(color)
    @color = color
  end
end

class SlidingPiece < Piece
end

class SteppingPiece < Piece
end

class Bishop < SlidingPiece
end

class Rook < SlidingPiece

  def initialize(color)
    super(color)
    @icon = "\u2656"
  end

  def valid_moves(pos, board)
    valid_moves = []
    (1..8).each do |el|

      current_spot = board.board["#{pos[0]}#{el}"]
      current_coordinate = "#{pos[0]}#{el}"
      if current_coordinate < pos && current_spot.is_a?(Piece)
        valid_moves = []
        next
      end
      next if current_spot == self
      break if current_coordinate > pos && current_spot.is_a?(Piece)
      valid_moves << current_coordinate
    end

    ('a'..'h').each do |el|
      valid_moves << "#{el}#{pos[1]}"
    end

    valid_moves
  end
end

class Queen < SlidingPiece
end

class Knight < SteppingPiece
end

class King < SteppingPiece
end
