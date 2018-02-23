require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < MiniTest::Test

  def test_game_exists
    game = Game.new
    assert_instance_of  Game, game
  end

  def test_game_has_four_colors
    game = Game.new
    assert_equal game.colors.length, 4
  end

 end
