class Board
  attr_accessor :board
  def initialize
    @board = Array.new(8) { Array.new(8) { nil } }
    create_initial_board
  end

  def create_initial_board
    @board[0][0] = Rook.new([0,0])[]
  end

  def move(start, finish)
    object = @board[start[0]][start[1]]
    valid_moves = object.valid_moves

    if valid_moves.include?(finish)
      @board[start[0]][start[1]]   = nil
      @board[finish[0]][finish[1]] = object
      object.current_pos = [finish[0], finish[1]]
    else
      "Invalid Move"
    end
  end


end
