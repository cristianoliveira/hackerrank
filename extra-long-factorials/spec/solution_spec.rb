require 'rspec'

require_relative '../factorial.rb'

describe Factorial do
  describe '#calcule' do
    it { expect(Factorial.calcule(3)).to eq(3*2*1) }
    it { expect(Factorial.calcule(5)).to eq(5*4*3*2*1) }
  end
end
