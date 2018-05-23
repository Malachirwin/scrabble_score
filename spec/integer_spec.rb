require('rspec')
require('integer')
describe('Integer') do
  it('changes a number from numeric form to word numbers') do
    expect(1.to_words).to eq('one')
  end
  it('changes a special teen number from numeric form to word numbers') do
    expect(4815.to_words).to eq('four thousand eight hundred fifteen')
  end
  it('changes a number with zeros to word numbers') do
    expect(4015.to_words).to eq('four thousand fifteen')
  end
  it('changes a bigger number from numeric form to word numbers') do
    expect(4875.to_words).to eq('four thousand eight hundred seventy five')
  end
  it('changes a really big number from numeric form to word numbers') do
    expect(54875.to_words).to eq('fifty four thousand eight hundred seventy five')
  end
  it('changes a really big number from numeric form to word numbers') do
    expect(154875.to_words).to eq('one hundred fifty four thousand eight hundred seventy five')
  end
  it('changes a really big number from numeric form to word numbers') do
    expect(2154875.to_words).to eq('two million one hundred fifty four thousand eight hundred seventy five')
  end
  it('changes a really big number from numeric form to word numbers') do
    expect(3452154875.to_words).to eq('three billion four hundred fifty two million one hundred fifty four thousand eight hundred seventy five')
  end
  it('changes a trillion number from numeric form to word numbers') do
    expect(7513452154875.to_words).to eq('seven trillion five hundred thirteen billion four hundred fifty two million one hundred fifty four thousand eight hundred seventy five')
  end
end
