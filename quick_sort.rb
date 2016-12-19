def quick_sort(array)
    return array if array.length <= 1

    comparison_index = (array.length / 2).floor
    value = array[comparison_index]
    array.delete_at(comparison_index)

    lesser = []
    greater = []

    array.each do |i|
        if i <= value
            lesser << i
        else
            greater << i
        end
    end
    return quick_sort(lesser) + [value] + quick_sort(greater)
end