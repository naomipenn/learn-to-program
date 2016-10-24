#“Program logger. Write a method called log that takes a string description of a block (and, of course, a block). Similar to the method do_self_importantly, it should puts a string telling you it started the block and another string at the end telling you it finished and also telling you what the block returned. Test your method by sending it a code block. Inside the block, put another call to log, passing a block to it. In other words, your output should look something like this:”

def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end
log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end
  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  '0' == 0
end
