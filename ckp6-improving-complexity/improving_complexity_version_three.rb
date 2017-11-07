def poorly_written_ruby(*arrays)
    combined_array = []
    arrays.map {|array| combined_array.concat(array) }

    sorted_array = merge_sort(combined_array)

    # Return the sorted array
    sorted_array
end

def merge_sort(array)
    len = array.length
    return collection if len <= 1

    mid = (len / 2).floor
    left = merge_sort(array[0..mid -1])
    right = merge_sort(array[mid..len])
    merge(left, right)
end

def merge(left, right)
    return right if left.empty?
    return left if right.empty?
    
    if left.first < right.first
        [left.first] + merge(left[1..left.length], right)
    else
        [right.first] + merge(left, right[1..right.length])
    end
end