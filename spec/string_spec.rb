require('rspec')
require('string')

describe('String') do
  it('changes one to 1') do
    expect('one'.to_numbers).to eq(1)
  end
  it('changes thirty four to 34') do
    expect('thirty four'.to_numbers).to eq(34)
  end
  it('changes sixteen to 16') do
    expect('sixteen'.to_numbers).to eq(16)
  end
  it('changes one hundred thirty six to 136') do
    expect('one hundred thirty six'.to_numbers).to eq(136)
  end
  it('it changes a word number to a numeric number') do
    expect('seven trillion five hundred thirteen billion four hundred fifty two million one hundred fifty four thousand eight hundred seventy five'.to_numbers).to eq(7513452154875)
  end
  it('handles millions and thousands') do
    expect('two million ten thousand'.to_numbers).to eq(2_010_000)
  end
  it('handles lots of zeros') do
    expect('ten thousand five'.to_numbers).to eq(10_005)
  end
  it('handles thousands?') do
    expect('ten thousand five hundred sixty two'.to_numbers).to eq(10_562)
  end
  it('handles trillions?') do
    expect('four trillion'.to_numbers).to eq(4_000_000_000_000)
  end
end
