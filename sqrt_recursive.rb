# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  middle_point = min_interval + ((max_interval - min_interval) / 2).floor
  square = middle_point * middle_point
  return middle_point if square == number

  if square > number
    sqrt_recursive(number, min_interval, middle_point)
  else
    sqrt_recursive(number, middle_point, max_interval)
  end
end
