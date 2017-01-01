require 'rspec'
require_relative '../solution'

describe Solution do
  let(:solution) { Solution.new }

  context 'first case' do
    let(:string) { "ab" }
    it { expect(solution.answer(string)).to eql("ba") }
  end

  context 'second case' do
    let(:string) { "bb" }
    it { expect(solution.answer(string)).to be_nil }
  end

  context 'second case' do
    let(:string){ "dkhc" }
    it { expect(solution.answer(string)).to eql("hcdk")}
  end
end
