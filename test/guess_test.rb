require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/sequence'
require 'pry'

class GuessTest < MiniTest::Test
  def test_it_exists
    guess = Guess.new("rgby")
    assert_instance_of Guess, guess
  end

  def test_user_guess_sequence
    guess = Guess.new("rgyb")
    assert_equal 'rgyb', guess.input
  end
  def test_if_letters_are_less_than_four
    input = 'ggg'
    game = Guess.new(input)

    assert game.short(input)
  end
  def test_if_letters_are_greater_than_four
    input = 'gggggggggg'

    game = Guess.new(input)

    assert game.long(input)
  end
end
