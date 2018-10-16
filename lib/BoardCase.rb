class BoardCase
  attr_accessor :value
  attr_reader :pos
  def initialize(pos)
    @pos = pos
    @value = " "
  end
end