#Building and sorting an array.

puts 'Type whatever you like, I will sort it alphabetically.'
words = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push word
end
puts 'Here you go!'
puts words.sort
