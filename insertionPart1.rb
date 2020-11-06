def insertionSort1(n, arr)
    insert_number = arr[arr.length-1]
    i = arr.length-2
    flag = false
    while i >= 0
        if arr[i] >= insert_number
            arr[i+1] = arr[i]
            puts arr.join(" ")
        else
            arr[i+1] = insert_number
            puts arr.join(" ")
            flag = true
            break
        end
        i = i - 1
    end
    if !flag
        arr[0] = insert_number
        puts arr.join(" ")
    end
end
    