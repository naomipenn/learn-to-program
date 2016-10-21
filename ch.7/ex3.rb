#“Deaf grandma extended. What if Grandma doesn’t want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times but not in a row, you should still be talking to Grandma.”

puts 'HELLO DARLING! HOW ARE YOU TODAY?'
bye_count = 0
while true
  input = gets.chomp
  if input == 'BYE'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end
  if bye_count >= 3
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
