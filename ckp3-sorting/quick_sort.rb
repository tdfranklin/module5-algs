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