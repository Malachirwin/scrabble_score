require('rspec')
require('word')

describe('scrabble_score') do
  it("returns a scrabble score for a letter") do
    word = Word.new("hello")
    expect(word.scrabble_score()).to(eq(8))
  end
  #it("returns a scrabble score for a letter") do
  #  word = Word.new("g")
  #  expect(word.scrabble_score()).to(eq(2))
  #end
  #it("returns a scrabble score for a letter") do
  #  word = Word.new("p")
  #  expect(word.scrabble_score()).to(eq(3))
  #end
end
