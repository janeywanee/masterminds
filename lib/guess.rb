require 'pry'
class Guess
  attr_reader :input, :sequence

  def initialize(input, sequence = nil)
    @input = input
    @sequence = sequence
  end

  def correct?
    input == sequence
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

  def correct_elements
    (input.chars & sequence.chars).length

  end

  def correct_positions
     input.chars.zip(sequence.chars).count{|c1, c2| c1 == c2}
  end

end
