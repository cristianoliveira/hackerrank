# https://www.hackerrank.com/challenges/encryption?h_r=internal-search
#
# An English text needs to be encrypted using the following encryption scheme.
# First, the spaces are removed from the text. Let L be the length of this text.
# Then, characters are written into a grid, whose rows and columns have the following constraints:

# √ L < rows < cols, where x is floor function and x is ceil function
# For example, the sentence `if man was meant to stay on the ground god would have given us roots`
# after removing spaces is  characters long, 54 so it is written in the form of a grid with 7 rows and 8 columns.

class Solution
  def answer(string)
    return "" unless string.size > 0

    sanitized = remove_whitespaces(string)

    col_size = Math.sqrt(sanitized.size).ceil

    matrix  = create_matrix(sanitized, col_size)

    (0..col_size).map do |i|
      matrix.map do |row|
        row[i] unless row[i].nil?
      end.join()
    end.join(' ').strip
  end

  private

  def create_matrix(string, size)
    pattern = /.{1,#{size}}/
    string.scan(pattern)
  end

  def remove_whitespaces(string)
    string.split.join
  end
end

if __FILE__ == $0
  string = gets.strip
  puts Solution.new.answer(string)
end
