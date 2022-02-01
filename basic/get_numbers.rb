#  Note: Execute this program in Terminal Tab
#  ruby get_number.rb
#  else, it will stays in vscode running mode, not getting any response.

puts "Welcome to 'Get My Numbers!'"

# Get the player's name and greet them.
print "What's your name? "
input = gets
name = input.chomp 
puts "Welcome, #{name}!" 

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player haas guessed correctly.
guess_it = false

# until (Opposite of if )
until num_guesses == 10 || guess_it

    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    # to_i(to integer)
    guess = gets.to_i

    num_guesses += 1

    # Compare the guess to the target.
    # Print the appropriate message.

    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guess_it = true
    end 
end 

#if the player didn't guess in time, show the target number.
unless guess_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end 