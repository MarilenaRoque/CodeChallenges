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
  unless s == s.reverse 
      left = 0
      right = s.length - 1
      removed = 'nil'
      while right > left
          puts "Those are index: #{left}, #{right}"
          puts "Those are the letters #{s[left]}, #{s[right]}"
          if s[left] != s[right]
              if (s[left + 1] == s[right] && removed == 'nil' && s[left+2]==s[right -1])
                  removed = left
                  left=left +1
              elsif (s[left] == s[right - 1] && removed == 'nil' && s[left+1]==s[right -2])
                  removed = right
                  right= right - 1
              else
                  removed = -1
                  break
              end
          end
          left = left + 1
          right = right -1   
      end
  else
      removed = -1
  end
  return removed
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

## Lisa workbook (Extra Code Challenge)
##https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/lisa-workbook/submissions/code/1326649975

def workbook(n, k, arr)
    page = 0
    special = 0
    book = {}
    0.upto(arr.length-1) do |i|
        page = page + 1
        1.upto(arr[i]) do |j|
            if page == j
                special = special +1
            end
            if (j%k == 0 && j!= arr[i])
                page = page + 1 
            end
        end   
    end
    return special

end


# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-hurdle-race/submissions/code/1326151400
# THe hurdle Race ( Extra Challenge )

def hurdleRace(k, height)
    portions = height.max - k
    portions = portions > 0 ? portions : 0
    return portions
end