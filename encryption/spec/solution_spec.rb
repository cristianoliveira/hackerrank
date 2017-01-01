require 'rspec'
require_relative '../solution'

describe Encrypter do
  let(:encrypter) { Encrypter.new(string) }

  context 'when is an empty string' do
    let(:string) { '' }
    it{ expect(encrypter.encrypt).to be_empty }
  end

  context 'when is a string with no whitespaces' do
    let(:string) { 'fobo' }
    it{ expect(encrypter.encrypt).to eql('fb oo') }
  end

  context 'first test case' do
    let(:string) { 'if man was meant to stay on the ground god would have given us roots' }
    it{ expect(encrypter.encrypt).to eql('imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau') }
  end

  context 'second test case' do
    let(:string) { 'haveaniceday' }
    it{ expect(encrypter.encrypt).to eql('hae and via ecy') }
  end

  context 'feedthedog test case' do
    let(:string) { 'feedthedog' }
    it{ expect(encrypter.encrypt).to eql('fto ehg ee dd') }
  end

  context 'chillout test case' do
    let(:string) { 'chillout' }
    it{ expect(encrypter.encrypt).to eql('clu hlt io') }
  end
end
