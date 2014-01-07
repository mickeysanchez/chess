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

      if current_coordinate < pos
        if current_spot.is_a?(Piece) && current_spot.color == @color
          valid_moves = []
          next
        elsif current_spot.is_a?(Piece) && current_spot.color != @color
          valid_moves = [current_coordinate]
          next
        end
      end

      next if current_spot == self

      if current_coordinate > pos
        if current_spot.is_a?(Piece) && current_spot.color == @color
          break
        elsif current_spot.is_a?(Piece) && current_spot.color != @color
          valid_moves << current_coordinate
          break
        end
      end

      valid_moves << current_coordinate
    end





    ('a'..'h').each do |el|
      current_spot = board.board["#{el}#{pos[1]}"]
      current_coordinate = "#{el}#{pos[1]}"

      if current_coordinate < pos
        if current_spot.is_a?(Piece) && current_spot.color == @color
          valid_moves = []
          next
        elsif current_spot.is_a?(Piece) && current_spot.color != @color
          valid_moves = [current_coordinate]
          next
        end
      end

      next if current_spot == self

      if current_coordinate > pos
        if current_spot.is_a?(Piece) && current_spot.color == @color
          break
        elsif current_spot.is_a?(Piece) && current_spot.color != @color
          valid_moves << current_coordinate
          break
        end
      end

      valid_moves << current_coordinate
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
