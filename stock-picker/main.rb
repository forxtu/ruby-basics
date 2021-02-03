# frozen_string_literal: true

def stock_picker(prices)
  cost_difference = 0
  best_days = []

  prices.each_with_index do |sell_price, sell_index|
    prices.each_with_index do |buy_price, buy_index|
      next if sell_index <= buy_index

      max_diff = sell_price - buy_price

      next if cost_difference >= max_diff

      cost_difference = max_diff
      best_days = [buy_index, sell_index]
    end
  end

  best_days
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
