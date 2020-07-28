# Repeated String
# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/repeated-string

def repeatedString(s, n)
  count_a = n/(s.length) * s.count('a')
  s = s.split("")
  (n%s.length).times do |count|
      count_a += 1 if s[count] == 'a'
  end
  count_a
end

# FizzBuzz

1.upto(100){|i|s="FizzBuzz";case when i%15==0;when i%5==0;s=s[4..7];when i%3==0; s=s[0..3];else s=i;end;puts s}

# Anagram
# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram/problem

def anagram(s)
  if s.length.odd?
      return -1 
  else
      s1=s.slice(0..s.length/2-1).split("")
      s2=s.slice(s.length/2..s.length).split("")
      s1.each do |s1_el| 
          s2.each_with_index do |s2_el, s2_i| 
              if s2_el == s1_el       
                  s2.delete_at(s2_i)
                  break
              end
          end
      end
      return s2.length
  end 
end

# Palindrome

def palindromeIndex(s)
  s= s.split("")
  return -1 if s == s.reverse
  s.each_with_index do |el, count|
      removed = s[count]
      s.delete_at(count)
      return count if s == s.reverse
      s.insert(count,removed)
  end
  return -1
end

# Even Fibonacci Numbers
# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/euler002

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    sum = 0
    n_before = 1
    n1 = 1
    while n1 < n do
        sum += n1 if n1%2==0
        keep = n1
        n1 = n1 + n_before
        n_before = keep
    end
    puts sum
end