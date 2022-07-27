def stock_picker(prices)
  profit_indexes = []
  profits = []
  asc_prices = prices.sort
  des_prices = prices.sort.reverse

  # finds best buy and sell days
  des_prices.each do |des_e|
    asc_prices.each do |asc_e|
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
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
