require_relative 'piece'
require_relative 'board'

class Chess
  def initialize
    @board = Board.new
  end

end

b = Board.new
b.move("a1", "e1")
b.move("e1", "e5")
b.move("e5", "a5")
b.move("a5", "a1")
b.move("a2", "a7")