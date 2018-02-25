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
end
