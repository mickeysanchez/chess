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
      valid_moves << "#{pos[0]}#{el}"
    end

    ('a'..'h').each do |el|
      valid_moves << "#{el}#{pos[1]}"
    end

    valid_moves.reject! do |el|
      el == pos
    end

    valid_moves.reject! do |el|
      unless board.board[el].nil?
        board.board[el].color == @color
      end
    end
  end
end

class Queen < SlidingPiece
end

class Knight < SteppingPiece
end

class King < SteppingPiece
end
