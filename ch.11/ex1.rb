#“Safer picture downloading. Adapt the picture-downloading/file-renaming program to your computer by adding some safety features to make sure you never overwrite a file. A few methods you might find useful are File.exist? (pass it a filename, and it will return true or false) and exit (like if return and Napoleon had a baby—it kills your program right where it stands; this is good for spitting out an error message and then quitting).”

Dir.chdir '/Users/saraveal/projects/learn-to-program/ch.11/pics'

pic_names = Dir['/Users/saraveal/*.jpg']

puts 'What would you like to call this download?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print '.'

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	if File.exist?(new_name)
		puts "Sorry, that file name already exists."
		exit
	else
		File.rename name, new_name
	end

	pic_number = pic_number + 1
end

puts
puts "Done!"
