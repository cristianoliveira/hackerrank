# Given a number N calcule the odds divisor for this number
#
# Example:
#  let n = 20
#  divisors: [1, 2, 4, 5, 10]
#  result: [1,5]

class Solution
  def divisors(number)
    divs = (1..Math.sqrt(number).ceil).select{|n| number%n==0}
    divs.push(number)
  end

  def answer(number)
    divisors(number).select{|d| d.odd?}
  end
end

if __FILE__ == $0
  number = gets.strip.to_i
  puts Solution.new.answer(number)
end
