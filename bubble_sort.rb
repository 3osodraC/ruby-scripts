def bubble_sort(arr)
  arr.each_with_index do |element, i|
    arr.each_with_index do |item, j|
      j == arr.length - 1 ? break : false

      if arr[j] > arr[j + 1]
        tmp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = tmp
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])

# pseudo
# loop n - 1 times
  # for i from 0 to n - 2
    # if ith > i + 1th, swap them
  # end
  # if no swaps were made, break
# end