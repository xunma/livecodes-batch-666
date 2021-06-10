# Write a game where the player has to guess a random price between 1 and 100 chosen by the program. The program should keep asking until the player guesses the right price. When the guess is right, the program displays how many guesses it took the player to win.

# pseudo-code

# program picks a random number from 1 to 100
number = rand(1..100)
user = nil
counter = 0

# ask the user for another input until the guess is correct
while user != number
  puts 'Choose a number between 1-100:'
  # ask the user for the user's guess
  # user will input their guess
  user = gets.chomp.to_i

  # compare the user's guess to the computer picked number
  # tell the user if this number is too big or too small
  if user == number
    puts ' you got it'
  elsif user > number
    puts 'too high'
  else
    puts 'too low'
  end
  counter += 1
end

# when the guess is corrent, let the user know how many guesses they have taken, and what the right answer is
puts "the answer is #{number} and it took you #{counter} tries."

