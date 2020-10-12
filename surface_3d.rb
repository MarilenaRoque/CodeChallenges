def surfaceArea(array)
  surface_area = 0
  top = array.length * array[0].length
  bottom = array.length * array[0].length
  front = array[-1].inject(:+)
  back = array[0].inject(:+)
  left = 0
  right = 0
  dif_surface = 0
  array.each do |el|
    left += el[0]
    right += el[-1]
  end
  array.each_with_index do |el, i|
    el.each_with_index do |position, j|
      unless i.zero?
        dif = position - array[i - 1][j]
        dif_surface += dif if dif.positive?
      end
      unless j.zero?
        dif = position - array[i][j - 1]
        dif_surface += dif if dif.positive?
      end
      unless i == (array.length - 1)
        dif = position - array[i + 1][j]
        dif_surface += dif if dif.positive?
      end
      unless j == (el.length - 1)
        dif = position - array[i][j + 1]
        dif_surface += dif if dif.positive?
      end
    end
  end
  puts dif_surface + top + bottom + front + back + right + left
end

surfaceArea([[1, 3, 4], [2, 2, 3], [1, 2, 4]])
