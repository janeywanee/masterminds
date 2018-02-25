require 'minitest/autorun'
require 'minitest/pride'
require './lib/sequence'
require 'pry'

class SequenceTest < MiniTest::Test
  def test_it_exists
    sequence = Sequence.new
    assert_instance_of Sequence, sequence
  end

  def test_it_generates_a_four_letter_sequence
    generated_sequence = Sequence.new.generate
    assert_equal 4, generated_sequence.length
  end
end
