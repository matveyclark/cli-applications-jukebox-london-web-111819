require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip

  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
    elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def list(songs)
  counter = 1
  songs.each do |song|
    puts "#{counter}. #{song}"
    counter += 1
  end
end

def exit_jukebox
  puts '/Goodbye/'
  return
end

def run 
  puts "Please enter a command:"
  input = gets.strip
  if input == 'exit'
    exit_jukebox
  end
end

# This method is a little trickier. It is where we pull together all of our other
# methods into a functioning program.

# First, `run` should `puts` out the prompt: `"Please enter a command:"`. Just like
# `play`, we will need to capture user input using `gets` and [`strip`][strip]
# (you can also use [`chomp`][chomp], but this will only remove carriage return
# characters, not extra whitespaces).

# Second, the `run` method will need to call one of the four methods we've written,
# based on the user input. For example, if the input is `"exit"`, we would want to
# call the `exit_jukebox` method.

# Now here is the tricky part. We've provided a way for a user to exit the program
# because ideally, we actually want the program to run until the _user_ decides to
# exit. We need a way to keep our program running as long as the user's input is
# _not_ `"exit"`. For this, we can use a loop!

# A loop can be used to contain the process of capturing user input then deciding
# what to do with it. If this is contained within a loop, as long as the loop
# conditions are met, the user will be able to enter commands over and over.

# Use `if` or `case` statements to determine how your program will respond to a
# user's input. For example, if their input is `"list"`, call the `list` method
# if their input is `"play"`, call the `play` method if their input is `"help"`,
# call the `help` method and if their input is `"exit"`, call the `exit_jukebox`
# method _and_ break out of your loop to stop the program.

# Part of the difficulty in working with loops is that its easy to get stuck in an
# infinite loop. We recommend working out the code for _exiting_ the loop first.
# Some of the tests in this lab also rely on the ability to exit to finish
# testing, so it is possible for your tests to hang half way through.