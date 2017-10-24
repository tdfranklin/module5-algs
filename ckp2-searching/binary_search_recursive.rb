def binary_search(array, min, max, value)
	if max >= 1
		mid = min + (max - min) / 2
		if array[mid] == value
			return mid
		elsif arr[mid] > value
			return binary_search(array, min, mid - 1, value)
		else
			return binary_search(array, mid + 1, max, value)
		end
	else
		return nil
	end
end