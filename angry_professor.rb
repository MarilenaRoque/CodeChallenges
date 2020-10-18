# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/angry-professor/submissions/code/1327479330
# Angry Professor Solution
def angryProfessor(k, a)
    count = 0
    a.each {|el| count+=1 if el<=0 } 
    status = (count >= k) ? 'NO' : 'YES'
end