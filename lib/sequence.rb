require 'pry'
class Sequence
  attr_reader :data
  VALID_LETTERS = ['r', 'g', 'b', 'y']
  def initialize
    @data = []
  end

  def generate
    4.times do
      data << VALID_LETTERS.sample
    end
    data
  end


end
