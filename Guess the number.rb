# Generate a random number between 1 and 100
secret_number = rand(1..100)

puts "Welcome to Guess the Number!"
puts "I'm thinking of a number between 1 and 100. Can you guess it?"

# Keep track of the number of guesses
num_guesses = 0

# Loop until the user guesses the correct number
loop do
  # Prompt the user to enter a guess
  print "Enter your guess (1-100): "
  guess = gets.chomp.to_i
  
  # Increment the number of guesses
  num_guesses += 1
  
  # Check if the guess is correct
  if guess == secret_number
    puts "Congratulations! You guessed the number in #{num_guesses} guesses."
    break
  elsif guess < secret_number
    puts "Too low! Guess again."
  else
    puts "Too high! Guess again."
  end
end
