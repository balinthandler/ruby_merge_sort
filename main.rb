def merge_sort(array)
  if array.length < 2
    array
  else
    first_half = array[0, array.length / 2]
    last_half = array[array.length / 2, array.length - 1]
    left = merge_sort(first_half)
    right = merge_sort(last_half)
    merge(left, right)
  end
end

def merge(left, right)
  result = []

  while !left.empty? && !right.empty?
    if left[0] <= right[0]
      result << left[0]
      left.slice!(0)
    else
      result << right[0]
      right.slice!(0)
    end
  end

  result += left if right.empty?
  result += right if left.empty?
  result
end

test = [3, 8, 10, 1, 4, 2, 6, 5, 9, 7]

p merge_sort(test)
