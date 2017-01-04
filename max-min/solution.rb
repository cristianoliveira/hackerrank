# https://www.hackerrank.com/challenges/mini-max-sum
#
# Given five positive integers, find the minimum
# and maximum values that can be calculated by
# summing exactly four of the five integers. Then
# print the respective minimum and maximum values as
# a single line of two space-separated long integers.

class Solution
  def answer(numbers)
    sorted = numbers.sort
    min, max = sorted[0..3], sorted[1..-1]
    [min.reduce(:+), max.reduce(:+)]
  end
end

if __FILE__ == $0
  # numbers.size == 5
  numbers = gets.strip.split(' ').map(&:to_i)
  raise 'Number size is not 5' if numbers.size != 5
  min, max = Solution.new.answer(numbers)
  puts "#{min} #{max}"
end
