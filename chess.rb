require_relative 'piece'
require_relative 'board'

class Chess
  def initialize
    @board = Board.new
  end

end

b = Board.new
b.move("a1", "e1")
b.move("a2", "a1")
b.move("a1", "g1")