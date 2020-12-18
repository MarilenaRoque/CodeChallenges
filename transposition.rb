def transpose(string)
    array = string.split('')
    n_g_array = []
    correct_array = []
    array.each_with_index do |el, i|
      if el == 'g' || el == 'n'
        n_g_array << el
      elsif !n_g_array.empty?
        correct_array << n_g_array.sort.reverse
        n_g_array = []
        correct_array << el
      else
        correct_array << el
      end
    end
    if !n_g_array.empty?
      correct_array << n_g_array.sort.reverse
    end
    return correct_array.flatten.join('')
  end
  
  puts transpose('he was searchign on Bign for signign kigns')
  # => he was searching on Bing for singing kings
  
  puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
  puts transpose('gngngnnggnngggnnn')
  # => nnnnnnnnngggggggg