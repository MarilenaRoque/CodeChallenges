def cavityMapxxxxx(grid)
    arr = grid.map {|el| el.split('') }
    grid = arr
    arr.each_with_index do |el1, i_row|
        el1.each_with_index do |el2, i_col|
            if (i_row != 0 && i_row != (el1.length-1) && i_col != 0 && i_col != (el2.length-1))
                if (el2 > arr[i_row -1][i_col] && el2 > arr[i_row +1][i_col] && el2 > arr[i_row][i_col+1] && el2 > arr[i_row][i_col-1])
                    grid[i_row][i_col] = 'X'
                end
            end
        end
    end
    
    arr = grid.map {|el| el.join().to_s }
end


def cavityMap(grid)
    arr = grid.map {|el| el.split('') }
    grid = arr
    (1).upto(arr.length - 2) do |i_row|
        (1).upto(arr[i_row].length - 2) do |i_col|
            if (arr[i_row][i_col] > arr[i_row -1][i_col] && arr[i_row][i_col] > arr[i_row +1][i_col] && arr[i_row][i_col] > arr[i_row][i_col+1] && arr[i_row][i_col] > arr[i_row][i_col-1])
                grid[i_row][i_col] = 'X'
            end
        end
    end
    
    arr = grid.map {|el| el.join().to_s }
end

puts cavityMap(["1112",
"1912",
'1892',
'1234'])