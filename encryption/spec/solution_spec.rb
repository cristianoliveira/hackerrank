require 'rspec'
require_relative '../solution'

describe Solution do
  let(:solution) { Solution.new }

  context 'when is an empty string' do
    let(:string) { '' }
    it{ expect(solution.answer(string)).to be_empty }
  end

  context 'when is a string with no whitespaces' do
    let(:string) { 'fobo' }
    it{ expect(solution.answer(string)).to eql('fb oo') }
  end

  context 'first test case' do
    let(:string) { 'if man was meant to stay on the ground god would have given us roots' }
    it{ expect(solution.answer(string)).to eql('imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau') }
  end

  context 'second test case' do
    let(:string) { 'haveaniceday' }
    it{ expect(solution.answer(string)).to eql('hae and via ecy') }
  end

  context 'feedthedog test case' do
    let(:string) { 'feedthedog' }
    it{ expect(solution.answer(string)).to eql('fto ehg ee dd') }
  end

  context 'chillout test case' do
    let(:string) { 'chillout' }
    it{ expect(solution.answer(string)).to eql('clu hlt io') }
  end
end
