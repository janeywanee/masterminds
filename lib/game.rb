require 'pry'
require './lib/sequence'
require './lib/guess'
class Game
  attr_reader :sequence,

  def initialize
    @sequence = Sequence.new.generate
  end

  def start
    puts opening
    puts menu
    response
  end

  def opening
    "Welcome to MASTERMIND"
  end

  def menu
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    puts "need to enter intructions"
    puts menu
    response
  end

  def play
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    input = gets.chomp.downcase

    if quit_commands(input)
      exit
    elsif cheat_commands(input)
      puts @sequence
    else
      validation(input)
    end
  end

  def short(input)
    if input.length < 4
      return true
    else
      return false
    end
  end

  def long(input)
    if input.length > 4
      return true
    else
      return false
    end
  end


  def validation(input)
    if short(input)
      puts "Too Short"
      play
    elsif long(input)
      puts "Too Long"
      play
    elsif
      @sequence == input
      #take the input and create a guess
      # take guess and sequence and compare
      # if we win then stop, if not then play



    end
  end

  def play_commands(input)
    %w(p P play PLAY Play).include?(input)
  end

  def quit_commands(input)
    %w(q Q quit Quit QUIT).include?(input)
  end

  def instruction_commands(input)
    %w(i I instructions Instructions INSTRUCTIONS).include?(input)
  end

  def cheat_commands(input)
    %w(c C cheat Cheat CHEAT).include?(input)
  end

  def response
    print '> '
    input = gets.chomp
    if play_commands(input)
      play
    elsif quit_commands(input)
      exit
    elsif instruction_commands(input)
      instructions
    end
  end
end
# game = Game.new
# game.start
