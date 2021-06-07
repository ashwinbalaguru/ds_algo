# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12


stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
  profit = {}

  stocks.each_with_index do |stock1, idx1|
    stocks.each_with_index do |stock2, idx2|
      if idx2 > idx1
        profit[[idx1, idx2]] = stock2 - stock1
      end
    end
  end
  profit.sort_by {|k, v| v}[-1][0]
end

stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(array)
  buy_index = 0
  sell_index = 0
  profit = 0

  array.each_with_index do |buy_price, bp_index|
    array.each_with_index do |sell_price, sp_index|
      potential_profit = buy_price - sell_price
      unless sp_index <= bp_index
        if potential_profit < profit
          profit = potential_profit
          buy_index = bp_index
          sell_index = sp_index
        end
      end
    end
  end
  [buy_index, sell_index]
end

stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
  result = []
  profit = 0

  stocks.each_with_index do |bp, bpx|
    stocks.each_with_index do |sp, spx|
      potential_profit = bp - sp

      if bpx > spx && potential_profit > profit
        profit = potential_profit
        result[0] = spx
        result[1] = bpx
      end
    end
  end
  result
end
