game_on = true
user_win_count = 0
computer_win_count = 0
hands = %w[rock scissors paper]

while game_on
  # ask for user input
  puts "Pick a hand: rock, scissors, or paper"
  # get user input
  user_input = gets.chomp
  # computer picks hand
  computer_choice = hands.sample

  # compare user input to computer input
  # if user inpput not valid then message "not valid"
  until hands.include? user_input
    puts "not valid. please pick again."
    user_input = gets.chomp
  end

  if (user_input == "rock" && computer_choice == "scissors") || (user_input == "scissors" && computer_choice == "paper") || (user_input == "paper" && computer_choice == "rock")
    puts "User wins!"
    user_win_count += 1
  elsif user_input == computer_choice
    puts "Tie"
  else
    puts "User loses"
    computer_win_count += 1
  end

  #display result
  puts "Computer picked #{computer_choice}"
  puts "You have won #{user_win_count} games and the computer has won #{computer_win_count} games"
  puts "Would you like to play again? 'y' or 'n'"
  play_again = gets.chomp
  game_on = false if play_again == 'n'
end
