class Board
  def initialize
    @board = Array.new(8) { Array.new(8) { nil } }
    create_initial_board
  end

  def create_initial_board
    Piece.new([0,1], self)
  end

  def update(pos, piece)
    # @board[piece.current_pos[0]][piece.current_pos[0]] = nil
    @board[pos[0]][pos[1]] = piece
  end
end