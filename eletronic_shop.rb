# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/electronics-shop/submissions/code/1327478800
# Eletronic Shop (Code Challenge hackerrank)
def getMoneySpent(keyboards, drives, b)
    max= -1
    keyboards.each { |k|drives.each { |d| max = k+d if (k+d<=b && k+d>max) } }
    return max
end