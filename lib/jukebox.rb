require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  
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