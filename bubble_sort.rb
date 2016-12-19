def bubble_sort(array)
    n = array.length

    loop do
        swapped = false
        (n-1).times do |x|
            if array[x] > array[x+1]
                array[x], array[x+1] = array[x+1], array[x]
                swapped = true
            end
        end
        break if not swapped
    end
    return array
end