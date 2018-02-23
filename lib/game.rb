
class Game
  attr_reader :sequence

  def initialize
    @sequence = "rrgb"
  end

  def start
    opening
    contents
  end

  def opening
    "Welcome to MASTERMIND"
  end

  def contents
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
end
