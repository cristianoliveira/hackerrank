# https://www.hackerrank.com/challenges/extra-long-factorials
#
# You are given an integer N. Print the factorial of this number.

class Solution
  def answer(number)
    (1..number).reduce(:*)
  end
end

if __FILE__ == $0
  number = gets.strip.to_i
  puts Solution.new.answer(number)
end
