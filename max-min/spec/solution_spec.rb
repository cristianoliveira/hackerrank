require 'rspec'
require_relative '../solution'

describe Solution do
  it 'returns the min and max' do
    expect(Solution.new.answer([1,2,3,4,5])).to eql([10, 14])
    expect(Solution.new.answer([10,10,10,10,5])).to eql([35, 40])
    expect(Solution.new.answer([10,10,2,10,50])).to eql([32, 80])
  end
end

