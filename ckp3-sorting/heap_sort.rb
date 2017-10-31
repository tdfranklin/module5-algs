def heapify(arr, n, i)
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2

    #See if left child exists and > root
    largest = left if left < n && arr[i] < arr[left]

    #See if right child exists and > root
    largest = right if right < n && arr[largest] < arr[right]

    #Change root if needed
    if largest != i
        arr[i], arr[largest] = arr[largest], arr[i]
        heapify(arr, n, largest)
    end
end

def heap_sort(arr)
    len = arr.length

    #Build a maxheap
    (0..len).reverse_each {|i| heapify(arr, len, i)}

    #One by one extract elements
    (0..len-1).reverse_each do |x|
        arr[x], arr[0] = arr[0], arr[x]
        heapify(arr, x, 0)
    end
end