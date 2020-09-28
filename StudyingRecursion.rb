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
    seq = []

    n.times do |i|
        if i < 2
            seq << 1
        else
            seq << seq[i-1] + seq[i-2]
        end
    end
    seq 
end

def fibonacciRecursive(n)
    if n < 2
        n
    else
       fibonacciRecursive(n-1) + fibonacciRecursive(n-2)
    end
end


