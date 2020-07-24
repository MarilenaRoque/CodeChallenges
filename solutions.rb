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