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
    @board["a1"] = Rook.new("black")
    @board["a2"] = Rook.new("black")
  end

  def move(start, finish)
    object = @board[start]
    p object
    valid_moves = object.valid_moves(start, self)

    if valid_moves.include?(finish)
      @board[finish]    = object
      @board[start]     = nil
    else
      puts "Invalid Move"
    end
    display
  end

  def display
     (1..8).to_a.reverse.each do |index|
        print "#{index} "
      ('a'..'h').to_a.each do |letter|
        if @board[letter + index.to_s] == nil
          print "_ "
        else
          print "#{@board[letter + index.to_s].icon} "
        end
      end
      puts
    end
    print "  a b c d e f g h"
    puts
  end
end