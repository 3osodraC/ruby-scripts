def stock_picker(prices)
  small = prices[0]
  big = prices[0]

  # doesn't work as intended
  prices.each_with_index do |element, index|
    element < small ? small = element : false
    element > big ? big = element : false
  end
  p small
  p big
  prices
end
p stock_picker([17,3,6,9,15,8,6,1,10])

# possible solitions:

# 1. Loop through the array with two variables, one for buy and another for sell,
# buy goes from [0]-[-1] and sell [-1]-[0].

# 2. Make a tmp variable that contains a sorted version of the array, make a loop
# that checks if element = srtd_arr[i], store it and its index (this will make a
# nested array with the values in order with their indexes).