# Iterative version of the fibonacci sequence

def fib_iter(iterations)
    return 0 if iterations == 0
    a = 1
    b = 1
    for i in 1..iterations
        puts a
        a, b = b, a + b
    end
end