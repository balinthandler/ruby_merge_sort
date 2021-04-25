# frozen_string_literal: true

def merge_sort(array)
  if array.length < 2
    array
  else
    first_half = array[0, array.length / 2]
    last_half = array[array.length / 2, array.length - 1]
    merge_sort(first_half)
    merge_sort(last_half)
  end
end

test = [3, 8, 5, 1, 4, 11, 2, 6, 7, 10, 9]

merge_sort(test)
