def factorialSimple(n)
    (1..n).inject do |product, n|
        product * n
    end
end

def factorialRecursive(n)
    if n == 0
        1
    else
        n * factorialRecursive(n-1)
    end
end

def fibonacciSimple(n)
    prev1 = 1
    prev2 = 1
    el = 1
    n.times do |i|
        if |i| < 3
            el = 1
        
        el = prev1 + prev2
        prev1 = prev2
        prev2 = el
    end
    el
end

put

        

