require_relative '../encrypt'

describe "#encrypt" do
  it "should return an empty string when passed in an empty string" do
    expected = ""
    actual = encrypt("")
    expect(actual).to eq(expected)
  end

  it "should return the correct value" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
