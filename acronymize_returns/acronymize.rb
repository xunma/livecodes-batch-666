def acronymize(sentence)
  # with each
  words = sentence.split(" ")
  string = ""
  words.each { |word| string += word[0] }
  return string.upcase
end

# def acronymize(sentence)
#   # with map
#   sentence.split(' ').map { |word| word[0] }.join('').upcase
# end
