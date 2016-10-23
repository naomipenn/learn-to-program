#“Dictionary sort. Your sorting algorithm is pretty good, sure. But there was always that sort of embarrassing point you were hoping I’d just sort of gloss over, right? About the capital letters? Your sorting algorithm is good for general-purpose sorting, but when you sort strings, you are using the ordering of the characters in your fonts (called the ASCII codes) rather than true dictionary ordering. In a dictionary, case (upper or lower) is irrelevant to the ordering. So, make a new method to sort words (something like dictionary_sort). Remember, though, that if I give your program words starting with capital letters, it should return words with those same capital letters, just ordered as you’d find in a dictionary.”

def dictionary_sort unsorted_array, sorted_array = []

  downcase_array = unsorted_array.map{|word| word.downcase}

  while unsorted_array.length > 1
    delete_index = downcase_array.find_index downcase_array.min
    sorted_array.push(unsorted_array.delete_at(delete_index))
    downcase_array.delete_at(delete_index)
  end
  puts sorted_array.join(', ')
end

dictionary_sort ["aardvark", "zebra", "Bob", "cattle", "hello", "Tenerife"]