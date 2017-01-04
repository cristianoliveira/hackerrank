require 'rspec'

require_relative '../solution.rb'

describe Solution do
  describe '#answer' do
    it { expect(Solution.new.answer(3)).to eq(3*2*1) }
    it { expect(Solution.new.answer(5)).to eq(5*4*3*2*1) }
  end
end
