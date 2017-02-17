var quickSort = function(array) {
    // Sorts array with a length <= 1
    if (array.length <= 1) {
        return array
    }
    var left = [],
        right = [],
        pivot = array[0];

    for (i = 1; i < array.length; i++) {
        if (array[i] < pivot) {
            left.push(array[i]);
        } else {
            right.push(array[i]);
        }
    }
    return quickSort(left).concat(pivot, quickSort(right))
};