#Happy birthday! Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.

puts 'What year were you born?'
b_year = gets.chomp.to_i
puts 'What month were you born? (1-12)'
b_month = gets.chomp.to_i
puts 'What day of the month were you born?'
b_day = gets.chomp.to_i
b = Time.local(b_year, b_month, b_day)
t = Time.new
t_year = t.year
t_month = t.month
t_day = t.day
age = t_year - b_year
if t_month < b_month || (t_month == b_month && t_day < b_day)
  age -=1
end
if t_month == b_month && t_day == b_day
  puts 'HAPPY BIRTHDAY!!'
end
age.times { puts 'SPANK!' }
