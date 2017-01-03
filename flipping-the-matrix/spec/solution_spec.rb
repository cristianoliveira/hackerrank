require 'rspec'
require_relative '../solution'

describe Solution do
  it 'sums the upper-left quadrant' do
    matrix = [
      [10, 10, 1, 1],
      [20, 20, 2, 1],
      [2, 2, 2, 1],
      [2, 2, 2, 1]
    ]
    expect(Solution.new.answer(matrix)).to eql(60)
  end

  it 'sums the upper-left quadrant' do
    matrix = [
      [1, 1, 10, 10],
      [2, 2, 20, 10],
      [2, 2, 2, 1],
      [2, 2, 2, 1]
    ]
    expect(Solution.new.answer(matrix)).to eql(50)
  end

  it 'sums the upper-left quadrant' do
    matrix = [
      [1, 1, 10, 10],
      [2, 2, 20, 10],
      [50, 50, 2, 1],
      [50, 50, 2, 1]
    ]
    expect(Solution.new.answer(matrix)).to eql(200)
  end

  it 'sums the upper-left quadrant' do
    matrix = [
      [112, 42, 83, 119],
      [56, 125, 56, 49],
      [15, 78, 101, 43],
      [62, 98, 114, 108]
    ]
    expect(Solution.new.answer(matrix)).to eql(414)
  end
end

