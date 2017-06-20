# https://www.hackerrank.com/challenges/compare-the-triplets

class Solution
  def self.answer(a0, a1, a2, b0, b1, b2)
    alice = [a0, a1, a2]
    bob = [b0, b1, b2]
    alice.zip(bob).reduce([0,0]) do |score, (a, b)|
      score[0] += 1 if a > b
      score[1] += 1 if a < b
      score
    end
  end
end

if __FILE__ == $0
  a0, a1, a2 = gets.strip.split(' ')
  a0 = a0.to_i
  a1 = a1.to_i
  a2 = a2.to_i
  b0, b1, b2 = gets.strip.split(' ')
  b0 = b0.to_i
  b1 = b1.to_i
  b2 = b2.to_i
  result = Solution.answer(a0, a1, a2, b0, b1, b2)
  print result.join(" ")
end
