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

  def test_response_when_q_calls_quit
    game = Game.new
    input = "q"

    assert game.quit_commands(input)
    # assert_equal "See you next time!", game.response
  end

  def test_response_when_i_calls_instructions
    game = Game.new
    input = "i"

    assert game.instruction_commands(input)
  end

  def test_response_when_p_calls_play
    game = Game.new
    input = "p"

    assert game.play_commands(input)
  end

  def test_it_can_cheat
    game = Game.new
    input = "c"

    assert game.cheat_commands(input)
  end

  def test_if_letters_are_less_than_four
    game = Game.new

    assert game.short('ggg')
  end

  def test_if_letters_are_greater_than_four
    game = Game.new

    assert game.long('gggggggggg')
  end

  def test_it_gives_correct_elements
    game = Game.new
    input = "rggb"
  end

end
