def bubble_sort(arr)
  arr.each_with_index do |_element, i|
    sorted = true
    arr.each_with_index do |_item, j|
      j == arr.length - i - 1 ? break : false # random memory touch prevention

      next unless arr[j] > arr[j + 1]

      tmp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = tmp
      sorted = false
    end
    break if sorted
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
