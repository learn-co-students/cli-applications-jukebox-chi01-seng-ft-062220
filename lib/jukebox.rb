require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end  

def list(songs)
  songs.each_with_index do |title, index|
  puts "#{index+1}. #{title}"
 end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip
  if answer.to_i > 0 && answer.to_i <= songs.count
    index = answer.to_i
    puts "Playing #{songs[index-1]}"
  elsif songs.include?(answer) == true 
    puts "Playing #{answer}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit"
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
      puts "Please enter a command:"
      input = gets.strip
    end
    if input == "exit"
      exit_jukebox
  end
end