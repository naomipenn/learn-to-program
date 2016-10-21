#“Deaf grandma. Whatever you say to Grandma (whatever you type in), she should respond with this:

puts 'HELLO DARLING! HOW ARE YOU TODAY?'
while true
  input = gets.chomp
  if input == 'BYE'
    puts 'BYE DARLING!'
    break
  end
  if input != input.upcase
      puts 'HUH?!  SPEAK UP, SONNY!'
  else
      random_year = 1930 + rand(21)
      puts 'NO, NOT SINCE ' + random_year.to_s + '!'
  end
end
