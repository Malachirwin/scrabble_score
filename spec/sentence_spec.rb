require 'rspec'
require 'sentence'

describe('Sentence') do
  it('calculates the scrabble score') do
    expect(Sentence.new('The quick brown fox jumped').scrabble_score).to eq(66)
  end
end
