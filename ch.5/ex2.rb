#“Bigger, better favorite number. Write a program that asks for a person’s favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)”

puts 'What\'s your favourite number?'
number = gets.chomp
mynumber = number.to_i + 1
puts 'Well, I think ' + mynumber.to_s + ' is WAY BETTER!'
