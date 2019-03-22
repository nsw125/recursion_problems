def merge_sort(array)
    result = []
    left_half = array.slice!(0..(array.length / 2)-1)
    right_half = array
    if left_half.length > 1
        left_half = merge_sort(left_half)
        right_half = merge_sort(right_half)    
    end
    until left_half.empty? or right_half.empty?
        if left_half[0] > right_half[0]
            result << right_half.shift
        else
            result << left_half.shift
        end
    end
    if left_half[0] != nil
        result << left_half.shift
    elsif right_half[0] != nil
        result << right_half.shift
    end
    result
end

puts merge_sort([1, 8, 6, 4, 7, 2, 3, 5])