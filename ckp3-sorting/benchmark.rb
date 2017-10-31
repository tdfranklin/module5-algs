require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'

arr = (1..500000).map { rand(0..1000000) }

Benchmark.bm do |x|
    x.report("Quick Sort") { quick_sort(arr) }
    x.report("Heap Sort") { heap_sort(arr) }
    x.report("Bucket Sort") { bucket_sort(arr) }
end

=begin

    Results:

                    user     system      total        real
    Quick Sort  0.110000   0.020000   0.130000 (  0.133043)
    Heap Sort  0.350000   0.000000   0.350000 (  0.333466)
    Bucket Sort  6.980000   0.000000   6.980000 (  6.980944)


    I believe Quick Sort is the fastest because it is sorting in-line and it is not having
    to do a lot of calculations.  It simply compares two numbers and then moves it to the
    left if it is less or right if it is greater and then works recursively for each number
    until the collection is sorted.  Heap Sort is only a little slower than Quick Sort, but
    still slower due to having to perform multiple calculations on each element multiple
    times.  Once you get the heap created, however, the actual sorting is going to be quite
    fast.  With Bucket Sort, I think it completely hinges on the algorithm you create that
    assigns each element to a bucket.  If you are able to spread out the elements enough so
    that most elements are going into a unique bucket, I think it can be quite fast.  However,
    if you wind up with a huge array an only 10% of the buckets filled (and each bucket has
    several elements) than it is by far the slowest.  And for that reason, I think Bucket Sort
    is unreliable, especially considering how quick and easy Quick Sort is to implement.

=end