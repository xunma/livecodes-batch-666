def acronymize(sentence)
  # turn string to array of words
  array = sentence.split(" ")
  # get the first character of each word
  string = ""
  array.each do |word|
    string += word[0].capitalize   # capitalize the letter
  end
  # put the letters into a string
  return string
end

p acronymize("where's the food") == "WTF"
p acronymize("as soon as possible") == "ASAP"
p acronymize("respond s'il vous plait") == "RSVP"
p acronymize("away from keyboard") == "AFK"
