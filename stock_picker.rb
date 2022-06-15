def stock_picker(prices)
  results = []
  big = 0
  p s_prices = prices.sort
  p prices

  # possible solution 3. not working as intended yet.
  s_prices.each_with_index do |element, i|
    if s_prices[-i] - s_prices[i] > big
      big = s_prices[-i] - s_prices[i]
      results.push([prices.index(s_prices[i]), prices.index(s_prices[-i])])
    end
    p big
  end
  results
end
p stock_picker([17,3,6,9,15,8,6,1,10])

# possible solitions:

# 1. Loop through the array with two variables, one for buy and another for sell,
# buy goes from [0]-[-1] and sell [-1]-[0].

# 2. Make a tmp variable that contains a sorted version of the array, make a loop
# that checks if element = srtd_arr[i], store it and its index (this will make a
# nested array with the values in order with their indexes).

# 3. Make a calculation to see the profits. Maybe something like a nested loop
# that goes through a sorted price array, comparing each index with all indexes
# going from -1 trough 0, subtracting the big value with the small one. Store
# the indexes that made the highest result, maybe do that thingy to find out
# the biggest number in an array, but this time like this:
# -----------------------------------------------------------------------------
# if arr[-i] - arr[i] > big
#   big = arr[-i] - arr[i]
#   arr1 << [arr[i], arr[-i]]
# end
# -----------------------------------------------------------------------------