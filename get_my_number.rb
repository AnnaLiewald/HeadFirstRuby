# Get my number game
# Written by: Anna

puts "Welcome to 'Get My Number'!"

#Get the player's name and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Hi, #{name}! Let's play a game."

#Sets restart if user wants to play again.
restart = true

while restart == true

  # Store a random number for the player to guess.
  puts "I've got a random number between 1 and 100."
  puts "Can you guess it?"
  target = rand(100)+1

  # Track how many guesses the player has made.
  num_guesses = 0

  #Track wether the player has guessed correctly.
  guessed_it = false

  until num_guesses == 10 || guessed_it

    puts "You've got #{10-num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    # Compare the guess to the target.
    # Print the appropriate message.
    if guess < target
      puts "Oops. Your guess was too LOW."
    elsif guess > target
      puts "Oops.Your guess was too HIGH."
    elsif guess == target
      puts "Congratulations, #{name}!"
      puts "You guessed my number (#{target}) in #{num_guesses} guesses!"
      guessed_it = true
    end

  end

  # If the player didn't guess in time, show the target number.
  unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target})."
  end

  #Ask the player to start the game again.
  print "Do you want to play again? (y/n) "
  answer = gets.chomp.downcase

  if answer == "n"
    restart = false
    puts "Goodbye, #{name}!"
  end
end
