class Board
  attr_accessor :board

  def initialize
    @board = empty_board
    create_initial_board
  end

  def empty_board
    hash = {}
    x = 1
    ('a'..'h').each do |letter|
      x = 1
      8.times do
        hash[letter + x.to_s] = nil
        x += 1
      end
    end
    hash
  end

  def create_initial_board
    @board["a1"] = Rook.new("a1")
  end

  def move(start, finish)
    p object = @board[start]
    valid_moves = object.valid_moves

    if valid_moves.include?(finish)
      @board[finish]     = object
      @board[start]      = nil
      object.current_pos = finish
    else
      "Invalid Move"
    end
  end
end