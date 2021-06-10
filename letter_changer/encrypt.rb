def encrypt(text)
  # define alphabet array
  # split text into letters array
  # look at each character
  # if space, keep space
  # check the position of the character in the alph array
  # shift it -3
  # using new index to get the new letter
  # join them
  alphabet = ('A'..'Z').to_a
  chars = text.split("")
  new_chars = chars.map do |char|
    # char == " " ? char : alphabet[alphabet.index(char) - 3]
    if char == " "
      " "
    else
      new_index = alphabet.index(char) - 3
      alphabet[new_index]
    end
  end

  new_chars.join('')
end
