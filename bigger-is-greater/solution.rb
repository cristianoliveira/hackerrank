# Given a word (w)

class Solution
  def answer(string)
    permutations = permutation(string)

    greater = permutations.sort.find{|p| p>string}
    return "no answer" if greater.nil?
    greater
  end

  def permutation(string)
    # I cheated here :P
    # Almost all languages have it as builtin
    string.chars.permutation.to_a.map(&:join)
  end
end

if __FILE__ == $0
  test_cases = gets.strip.to_i
  test_cases.times do
    string = gets.strip
    puts Solution.new.answer(string)
  end
end
