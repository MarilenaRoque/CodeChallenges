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

