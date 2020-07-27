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