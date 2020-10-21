# Complete the staircase function below.
def staircase(n)
    1.upto(n) do |i|
      puts "#{' ' * (n - i)}#{'#' * i}"
    end
  end
staircase(4)