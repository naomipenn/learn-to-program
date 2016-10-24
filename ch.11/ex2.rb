#“Build your own playlist. For this to work, you need to have some music ripped to your computer in some format. We’ve ripped a hundred or so CDs, and we keep them in directories something like music/​genre/​artist_and_cd_name/​track_number.ogg. (I’m partial to the ogg format, though this would work just as well with mp3s or whatever you use.)

#Building a playlist is easy. It’s just a regular text file (no YAML required, even). Each line is a filename, like this:

#What makes it a playlist? Well, you have to give the file the m3u extension, like playlist.m3u or something. And that’s all a playlist is: a text file with an m3u extension.

#So, have your program search for various music files and build you a playlist. Use your shuffle method here to mix up your playlist. Then check it out in your favorite music player (Winamp, MPlayer, and so on)!

Dir.chdir("/Users/saraveal/Music/iTunes/iTunes Media/")

music_dir = Dir["/home/saraveal/Music/**/*.m4a"]

puts "Name your mix-tape!"
playlist_answer = gets.chomp
playlist_name = "#{playlist_answer}.m4a"

array_of_song_paths = []

music_dir.each do |song|
  array_of_song_paths << song
end


File.open(playlist_name, 'w') do |f|
  f.write array_of_song_paths.join("\n")
end
