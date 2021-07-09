# Iterative version of the fibonacci sequence

def fib_iter(iterations)
    return 0 if iterations == 0
    return 1 if iterations == 1
    a = 0
    b = 1
    for i in 1..iterations
        a, b = b, a + b
    end
    return a
end

# Recursive version of the fibonacci sequence

def fib_rec(iterations)
    return 0 if iterations == 0
    return 1 if iterations == 1
    return fib_rec(iterations - 1) + fib_rec(iterations - 2) 
end

def fib_array_iter(num)
    fibs = []
    for i in 0..num - 1
        fibs += [fib_iter(i)]
    end
    fibs
end

def fib_array_rec(num)
    fibs = []
    for i in 0..num - 1
        fibs += [fib_rec(i)]
    end
    fibs
end
