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

  def test_start_has_a_menu
    game = Game.new

    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", game.menu
  end

  def test_start_can_accept_quit_option
    game = Game.new

    assert_equal "See you next time!", game.quit
  end

  def test_response_when_q_calls_quit
    game = Game.new(io:StringIO.new("q"))

    assert_equal "See you next time!", game.response
  end

  def test_start_can_accept_instructions_option
    game = Game.new

    assert_equal "Quick look!", game.instructions
  end

  def test_response_when_i_calls_instructions
    game = Game.new(io:StringIO.new("i"))

    assert_equal "Quick look!", game.response
  end

  def test_what_user_sees_when_they_start_and_quit_options
    game = Game.new

    assert_equal "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?", game.
  end



end
