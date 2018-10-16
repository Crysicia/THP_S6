class Player
  attr_accessor :moves, :wins
  attr_reader :name
  def initialize(name)
    @name = name
    @wins = 0
    @moves = []
  end
end