# https://www.hackerrank.com/challenges/apple-and-orange
#

class Solution
  def answer(positions, fruits)
    apples = fruits[:apples]
      .select{|a| positions[:trees][0] + a >= positions[:house][0] }
      .select{|a| positions[:trees][0] + a <= positions[:house][1] }.size

    oranges = fruits[:oranges]
      .select{|a| positions[:trees][1] + a >= positions[:house][0] }
      .select{|a| positions[:trees][1] + a <= positions[:house][1] }.size

    [ apples, oranges ]
  end
end

if __FILE__ == $0
  house_positions = gets.strip.split(' ').map(&:to_i)
  trees_position = gets.strip.split(' ').map(&:to_i)
  falled = gets.strip.split(' ').map(&:to_i)
  apples = gets.strip.split(' ').map(&:to_i)
  oranges = gets.strip.split(' ').map(&:to_i)

  puts Solution.new.answer({house: house_positions, trees: trees_position},
                           {qtfalled: falled, apples: apples, oranges: oranges})
end
