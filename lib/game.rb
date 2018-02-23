
class Game
  attr_reader :sequence, :io

  def initialize(io:"")
    @sequence = "rrgb"
    @io = io
  end

  def start
    puts opening
    puts contents
  end

  def opening
    "Welcome to MASTERMIND"
  end

  def menu
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def quit
    "See you next time!"
  end

  def instructions
    "Quick look!"
  end

  def response
    response = io.gets.strip
    if response == "q"
      quit
    elsif response == "i"
      instructions
    end
  end
end
