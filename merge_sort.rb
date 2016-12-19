def merge_sort(array)
    if array.length <= 1
        return array
    else
    mid = (array.length / 2).floor
    left = merge_sort(array[0..mid-1])
    right = merge_sort(array[mid..array.length])
    merge(left, right)
    end
end

def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
        if left.first <= right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end
    puts sorted << left << right
end
