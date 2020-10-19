# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/find-digits/submissions/code/1327501891
# Find Digits Solution
def findDigits(n)
    new = n.to_s.split("")
    count = 0
    new.each do |el| 
        if el != "0" && n!=0
            count+=1 if  n%el.to_i == 0
        end
    end
    return count
        
end