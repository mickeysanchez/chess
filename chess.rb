require_relative 'piece'
require_relative 'board'

class Chess
  def initialize
    @board = Board.new
  end

end

b = Board.new
b.display
puts
b.move("a1","a2")