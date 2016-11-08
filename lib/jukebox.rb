# def say_hello(name)
#   "Hi #{name}!"
# end

#
# puts "Enter your name:"
# users_name = gets.chomp

#
# puts say_hello(users_name)

# def run
#   help
# end

def run(songs)
  puts "Please enter a command:"
  command = STDIN.gets.chomp
  if command.downcase == "help"
    help
  elsif command.downcase == "list"
    list(songs)
  elsif command.downcase == "play"
    play(songs)
  elsif command.downcase == "exit"
    exit_jukebox
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_select = STDIN.gets.chomp
  song_playing = ""
  bad_input = true
  songs.each_with_index do |a_song, i|
    if (i+1).to_s == song_select || song_select == a_song
      puts "Playing #{a_song}"
      bad_input = false
    end
  end
  if bad_input
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

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
#
