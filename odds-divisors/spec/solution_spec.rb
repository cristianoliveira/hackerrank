require 'rspec'
require_relative '../solution'

describe Solution do
  let(:solution) { Solution.new }

  context 'when is a valid number' do
    it { expect(solution.answer(4)).to eql([1]) }
    it { expect(solution.answer(5)).to eql([1,5]) }
    it { expect(solution.answer(20)).to eql([1,5]) }
    it { expect(solution.answer(1000)).to eql([1,5,25]) }
  end
end
