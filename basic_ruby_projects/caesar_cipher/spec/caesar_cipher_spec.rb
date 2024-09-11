require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'encrypts lowercase letters correctly' do
    expect(caesar_cipher('abc', 3)).to eq('def')
  end

  it 'encrypts uppercase letters correctly' do
    expect(caesar_cipher('XYZ', 3)).to eq('ABC')
  end

  it 'wraps around the alphabet' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'keeps non-alphabetic characters unchanged' do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it 'handles negative shift values' do
    expect(caesar_cipher('def', -3)).to eq('abc')
  end

  it 'handles shift values greater than 26' do
    expect(caesar_cipher('abc', 30)).to eq('efg')
  end
end
