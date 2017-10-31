def bucket_sort(arr)
    return if arr.empty?
    bucket_size = arr.length
    min = arr.min
    max = arr.max

    bucket_count = ((max - min) / bucket_size).floor + 1
    buckets = Array.new(bucket_count)

    (0..buckets.length - 1).each { |i| buckets[i] = [] }

    (0..arr.length - 1).each { |i| buckets[((arr[i] - min) / bucket_size).floor].push(arr[i]) }

    arr.clear
    (0..buckets.length - 1).each do |i|
        next unless buckets[i]
        buckets[i] = insertion_sort(buckets[i]) if buckets[i].length > 1
        buckets[i].each { |value| arr.push(value) }
    end
    arr
end

def insertion_sort(arr)
    sorted_collection = [arr.delete_at(0)]

    for item in arr
        index = 0
        while index < sorted_collection.length
            if item <= sorted_collection[index]
                sorted_collection.insert(index, item)
                break
            elsif index == sorted_collection.length - 1
                sorted_collection.insert(index + 1, item)
                break
            end
            index += 1
        end
    end
    sorted_collection
end