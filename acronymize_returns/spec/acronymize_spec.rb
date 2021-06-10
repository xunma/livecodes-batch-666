# acronymize("where's the food") == "WTF"
# acronymize("as soon as possible") == "ASAP"
# acronymize("respond s'il vous plait") == "RSVP"
# acronymize("away from keyboard") == "AFK"
require_relative '../acronymize'
describe "#acronymize" do
  it "should return an empty string when passed in an empty string" do
    expected = ""
    actual = acronymize("")
    expect(actual).to eq(expected)
  end

  it "should return 'WTF' if passed in 'where's the food'" do
    expected = "WTF"
    actual = acronymize("where's the food")
    expect(actual).to eq(expected)
  end
end
