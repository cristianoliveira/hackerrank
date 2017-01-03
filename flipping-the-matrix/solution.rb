# https://www.hackerrank.com/challenges/flipping-the-matrix

# Sean invented a game involving a  matrix where
# each cell of the matrix contains an integer. He can
# reverse any of its rows or columns any number of
# times, and the goal of the game is to maximize
# the sum of the elements in the  submatrix located
# in the upper-left corner of the  matrix (i.e., its
# upper-left quadrant).

# Given the initial configurations for  matrices, help Sean reverse
# the rows and columns of each matrix in the best
# possible way so that the sum of the elements in
# the matrix's upper-left quadrant is maximal. For each matrix, print
# the maximized sum on a new line.

class Solution
  def answer(matrix)
    p "init #{matrix}"
    matrix.size.times do |ri|
      row = matrix[ri]
      if sum(row[0..1]) < sum(row[-2..-1])
        matrix[ri] = row.reverse
      end

      p matrix

      matrix.size.times do |ci|
        values = matrix.map{|r| r[ci]}
        if sum(values[0..1]) < sum(values[-2..-1])
          matrix = swap_col(ci, matrix, values)
        end
      end
    end

    p "final #{matrix}"

    matrix[0..1].map{|r| r[0..1].reduce(:+) }.reduce(:+)
  end

  def sum(arr)
    arr.reduce(:+)
  end

  def swap_col(col, matrix, values)
    matrix.size.times do |row|
      matrix[row][col] = values.pop
    end
    matrix
  end
end

if __FILE__ == $0
  # The first line contains an integer, `q`, denoting the number of queries
  q = gets.to_i
  raise "q wrong!" if q < 1 or q > 16
  q.times do
    # The first line of each query contains an integer, `n`,
    n = gets.to_i
    matrix = (n*2).times.map do
      gets.strip.split(' ').map(&:to_i)
    end

    puts Solution.new.answer(matrix)
  end
end
