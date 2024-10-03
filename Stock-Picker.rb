def stock_picker(price_array)
  min_value = price_array.reduce do |min, price|
    price < min ? price : min
  end
  price_array.find_index(min_value)
end

prices = [17, 3, 6, 9, 15, 20, 1, 10, 16, 2, 19, 3]
pp stock_picker(prices)