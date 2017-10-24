require 'benchmark'

def fib_iterative(n)
    return 0 if n == 0
    return 1 if n == 1
    fib_0 = 0
    fib_1 = 1
    x = n - 1
    x.times do
        temp = fib_0
        fib_0 = fib_1
        fib_1 += temp
    end
    fib_1
end

def fib_recursive(n)
    return 0 if n == 0
    return 1 if n == 1
    return fib_recursive(n-1) + fib_recursive(n-2)
end

Benchmark.bm do |bm|
    bm.report do
        fib_iterative(20)
    end

    bm.report do
        fib_recursive(20)
    end
end