def merge_sorted_arrays(arr1, arr2)
  i = 0
  j = 0
  res = []
  while i < arr1.size && j < arr2.size
    if arr1[i] < arr2[j] 
      res << arr1[i]
      i += 1
    else
      res << arr2[j]
      j += 1
    end
  end
  res.concat(arr1[i..-1]).concat(arr2[j..-1])
end

def merge_sort(arr)
  size = arr.size
  return arr if size == 1 
  midpoint =  size / 2
  sorted_left = merge_sort(arr.take(midpoint))
  sorted_right = merge_sort(arr.drop(midpoint))
  merge_sorted_arrays(sorted_left, sorted_right)
end


arr1 = [1,3,7]
arr2 = [0,8,12]
arr4 = [1,3,7,0,8,12,-10,45,23,47983,265,2465,32,56]
arr3 = [3, 2, 1, 13, 8, 5, 0, 1]
arr5 = [105, 79, 100, 110]

p merge_sorted_arrays(arr1, arr2)
p merge_sort(arr4)
p merge_sort(arr3)
p merge_sort(arr5)