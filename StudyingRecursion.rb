def factorialSimple(n)
    (1..n).inject do |product, n|
        product * n
    end
end
