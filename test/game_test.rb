require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < MiniTest::Test

  def test_game_class_exists
    game = Game.new

    assert_instance_of Game, game
  end

  def test_it_has_a_sequence
    game = Game.new

    assert_equal "rrgb", game.sequence
  end

  def test_start_has_a_opening
    game = Game.new

    assert_equal "Welcome to MASTERMIND", game.opening
  end

  def test_start_has_a_contents
    game = Game.new

    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", game.contents
  end


end
