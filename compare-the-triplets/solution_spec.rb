require_relative 'solution'

describe 'foo' do
  it 'is an ana win' do
    expect(Solution.answer(1,1,1,0,0,0)).to eql([3,0])
    expect(Solution.answer(1,0,1,0,0,0)).to eql([2,0])
    expect(Solution.answer(0,0,1,0,0,0)).to eql([1,0])
  end

  it 'is a bob win' do
    expect(Solution.answer(0,0,0,1,1,1)).to eql([0,3])
    expect(Solution.answer(0,0,0,1,0,1)).to eql([0,2])
    expect(Solution.answer(0,0,0,0,0,1)).to eql([0,1])
  end

  it 'is a tie' do
    expect(Solution.answer(1,1,1,1,1,1)).to eql([0,0])
    expect(Solution.answer(3,3,3,3,3,3)).to eql([0,0])
  end
end
