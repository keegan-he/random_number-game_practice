#Get my number game
#written by Keegan

puts "Welcome to 'Get My Number!'"
puts "What is your name? "

input = gets

name = input.chomp

puts "Welcome, #{name}!"

#Store a random number for the player to guess between 1 and 100.
#rand method + 1 bc it generates numbers between zero & just below the maximum value you specifify.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1 

#Track how many guesses the player has made. 
num_guesses = 0

#Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it

puts "You've got #{10 - num_guesses} guesses left."
puts "Make a guess: "
guess = gets.to_i

num_guesses += 1

#Compare the guess to the target.
#Print the appropriate message. 
  if guess < target
    puts "Oops. Your guess was LOW!"
  elsif guess > target
    puts "Oops. Your guess was HIGH!"
  elsif guess == target
    puts "\nGood job #{name}!"
    puts "\nYou guessed my number in #{num_guesses} guesses!!!!"
    puts "\nYou should celebrate and buy Euni a beer! *PUIK*"
    guessed_it = true
  end

end

#If player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number (It was #{target}.)"
end