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
    if n == 0
        0
    elsif n == 1
        n
    else
       fibonacciRecursive(n-1) + fibonacciRecursive(n-2)
    end
end

def palindromeRecursive(s)
    if s.length == 0 || s.length == 1
        return true
    else
        if s[0] == s[-1]
            palindromeRecursive(s[1..-2])
        else
            false
        end
    end
end

def bottles(n)
    if n == 0
        puts "no more bottles of beer on the wall"
    else
        puts "#{n} bottles of beer on the wall"
        bottles(n-1)
    end
end

def flattening(arr, resul=[])
   arr.each do |el|
        if el.kind_of?(Array)
            flattening(el,resul)
        else
            resul << el
        end
    end
    resul
end
