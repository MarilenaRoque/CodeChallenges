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


def integer_to_roman(roman_mapping, number, result = "")
    return result if number == 0
    roman_mapping.keys.each do |div|
        quotient, modulus = number.divmod(div)
        result << roman_mapping[div] * quotient
        return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
    end
end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}



roman_mapping_integer = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def roman_to_integer(roman_mapping, str, result = 0)
    return result if str.empty?
    roman_mapping.keys.each do |roman|
        if str.start_with?(roman)
            result = result + roman_mapping[roman]
            str = str.slice(roman.length, str.length)
            return roman_to_integer(roman_mapping, str, result)
        end 
    end
end

puts roman_to_integer(roman_mapping_integer, "MMMXXXIV")