

#def total(prices)
#  amount = 0
#  index = 0
#  while index < prices.length
#    amount += prices[index]
#    index += 1
#  end
#  amount
#end

def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end


#def refund(prices)
#  amount = 0
#  index = 0
#  while index < prices.length
#    amount -= prices[index]
#    index += 1
#  end
#  amount
#end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end


#def show_discounts(prices)
#  index = 0
#  while index < prices.length
#    amount_off = prices[index] / 3.0
#    puts format("Your discount: $%.2f",  amount_off)
#    index += 1
#  end
#end

def show_discounts(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: $%.2f",  amount_off)
  end
end

prices = [3.99, 25.00, 8.99]

puts format("Your total price: $%.2f", total(prices))
puts format("Your total refund: $%.2f", refund(prices))
show_discounts(prices)
