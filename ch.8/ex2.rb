#Table of contents, revisited. Rewrite your table of contents program here. Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on). Then print out the information from the array in a beautifully formatted table of contents.

title = 'Table of Contents'
chapters = [['Getting Started', 1],
            ['Numbers',         9],
            ['Letters',        13]]
puts title.center(50)
puts
chap_num = 1
chapters.each do |chap|
  name = chap[0]
  page = chap[1]
  beginning = 'Chapter ' + chap_num.to_s + ': ' + name
  ending    = 'page ' + page.to_s
  puts beginning.ljust(30) + ending.rjust(20)
  chap_num = chap_num + 1
end
