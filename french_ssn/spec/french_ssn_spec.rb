require_relative '../french_ssn'

describe '#french_ssn_info' do
  it 'should return the number is invalid if given an invalid ssn' do
    expected = "The number is invalid"
    actual = french_ssn_info('123')
    expect(actual).to eq(expected)
  end

  it 'should return the person\'s information if given the valid ssn' do
    expected = "a man, born in December, 1984 in Seine-Maritime."
    actual = french_ssn_info("1 84 12 76 451 089 46")
    expect(actual).to eq(expected)
  end
end
