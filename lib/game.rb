class Game
  attr_reader :colors

  def initialize
    @color = 4.times.map { rand()}

end
