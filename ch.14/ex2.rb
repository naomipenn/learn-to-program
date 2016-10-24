#“Grandfather clock. Write a method that takes a block and calls it once for each hour that has passed today. That way, if I were to pass in the block:

def grandfather_clock &block
  hour = Time.new.hour
  if hour >= 13
    hour = hour - 12
  end
  if hour == 0
    hour = 12
  end
  hour.times do
    block.call
  end
end
grandfather_clock do
  puts 'DONG!'
end
