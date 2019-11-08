require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "/Please enter a song name or number:/"
  input = gets.strip
  binding.pry
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

# This method also takes in an argument of the `songs` array. It first `puts` out
# the prompt: `"Please enter a song name or number:"`. It then stores the user's
# response using `gets.strip`.

# If the user's response is a valid song number or song name, the method should
# `puts` out: `"Playing <song name>"`. Otherwise, it should `puts` out:
# `"Invalid input, please try again"`.