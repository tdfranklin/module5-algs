def poorly_written_ruby(*arrays)
    combined_array = []
    arrays.map {|array| combined_array.concat(array) }

    sorted_array = quick_sort(combined_array)

    # Return the sorted array
    sorted_array
end

def quick_sort(items)
	return items if items.length <= 1
	pivot =items.last
	left = []
	right = []
	items.each do |item|
		if item > pivot
			right << item
		elsif item < pivot
			left << item
		end
	end
	return quick_sort(left) + [pivot] + quick_sort(right)
end
