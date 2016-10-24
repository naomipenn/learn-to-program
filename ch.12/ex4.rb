#Birthday helper! Write a program to read in names and birth dates from a text file. It should then ask you for a name. You type one in, and it tells you when that person’s next birthday will be (and, for the truly adventurous, how old they will be). The input file should look something like this:

#still tinkering

birth_dates = {}
  File.read('birthdays.txt').each_line do |line|
    line = line.chomp
    first_comma = 0
    while line[first_comma] != ',' &&
        first_comma < line.length
      first_comma = first_comma + 1
    end
    name = line[0..(first_comma - 1)]
    date = line[-12..-1]
    birth_dates[name] = date
  end
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]
if date == nil
  puts 'Sorry, I\'ve got nada.'
else
  puts date[0..18]
end
