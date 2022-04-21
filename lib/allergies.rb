#!/usr/bin/env ruby

require('pry')

class Allergies
  def initialize(score)
    @score = score.to_i
    @allergens = {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomatoes',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }
  end

  def score
    output = []
    score_array = [128, 64, 32, 16, 8, 4, 2, 1]
    while @score > 0
      if @score - score_array[0] >= 0
        @score -= score_array[0]
        output.unshift(@allergens[score_array[0]])
      end
      score_array.shift
    end
    output
  end
end