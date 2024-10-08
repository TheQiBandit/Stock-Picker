def stock_picker(price_array)
  profit = 0
  best_days = [nil, nil]

  #Iterate through the array
  price_array.each_with_index do |buy_price, buy_day|
    
    #Iterate through the buy day
    price_array.each_with_index do |sell_price, sell_day|

      #Set conditionals to ignore sell days before last days and update max profit
      if (sell_day > buy_day && sell_price - buy_price > profit)
        profit = sell_price - buy_price
        best_days = [buy_day, sell_day]       
      end
    end
  end
    
  
best_days
end

prices = [17, 3, 6, 2, 9, 15, 8, 6, 1, 10, 21, 19]
pp stock_picker(prices)


