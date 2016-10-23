#“Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? Write a shuffle method that takes an array and returns a totally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.”

def shuffle(array)
	rec_shuffle(array, [])
end

def rec_shuffle(initial_array, shuffled_array)
	#pick element from array at random
	rand_index = rand(initial_array.length)
	element = initial_array[rand_index]
	#add to shuffled array
	shuffled_array << element
	#remove from initial array
	initial_array.delete_at(rand_index)
	#repeat
	if initial_array.length > 0
		rec_shuffle(initial_array, shuffled_array)
	else
		shuffled_array
	end
end

puts shuffle(["blue", "yellow", "red", "green", "orange", "purple"])
