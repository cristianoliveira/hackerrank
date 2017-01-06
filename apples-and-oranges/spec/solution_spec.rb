require 'rspec'
require_relative '../solution'

describe Solution do
  it 'counts the fruits that fall inside house' do
    positions = { house: [7, 11], trees: [5, 15]}
    fruits = { qtfalled: [3,2], apples: [-2,2,1], oranges: [5,-6]}

    expect(Solution.new.answer(positions, fruits)).to eql([1,1])
  end
end

