def stock_picker(prices)
  days = [0, 0]
  profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..-1].each_with_index do |sell_price, relative_sell_day|
      # obtener index del dia de la venta
      sell_day = buy_day + 1 + relative_sell_day
      substraction = sell_price - buy_price

      puts "Buy day: #{buy_day}, Sell Day: #{sell_day}, Buy Price: #{buy_price}, Sell Price: #{sell_price}, Profit: #{substraction}"

      if substraction > profit
        profit = substraction
        days[buy_day, sell_day]
      end
    end
  end

  days
end

# puts stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

puts stock_picker([17,3,6,9,15,8,6,1,10])
