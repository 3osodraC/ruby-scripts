def stock_picker(prices)
  profit_indexes = []
  profits = []
  asc_prices = prices.sort
  des_prices = prices.sort.reverse

  des_prices.each_with_index do |des_e, i|
    asc_prices.each_with_index do |asc_e, j|
      # checks purchase validity by checking if buy day is before sell day
      if prices.index(asc_e) < prices.index(des_e)
        profits.push(des_e - asc_e)
        profit_indexes.push(prices.index(asc_e))
        profit_indexes.push(prices.index(des_e))
        return profit_indexes
      end
    end
  end
end
p stock_picker([17,3,6,9,15,8,6,1,10])