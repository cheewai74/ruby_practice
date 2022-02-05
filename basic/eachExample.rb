
# amount=0
# index=0
# while index < price.length
#     yield self[amount]
#     amount += prices[index]
#     index += 1
# end

def total(prices)
    amount = 0
    prices.each do |price| # Process each price
        amount += price # Add the current price to the total
    end
    amount # Return the final total
end

# amount=0
# index=0
# while index < price.length
#     yield self[amount]
#     amount -= prices[index]
#     index += 1
# end

def refund(prices)
    amount = 0
    prices.each do |price|
        amount -= price # Refund the current price
    end
    amount # Return the final total
end


# index = 0
# while index < prices.length
#     amount_off = prices[index] / 3.0
#     puts format("Your discount: $%.2f", amount_off)
#     index += 1
# end

def show_discounts(prices)
    prices.each do |price|
        amount_off = price / 3.0
        puts format("Your discount: $%.2f", amount_off)
    end
end

prices = [3.00, 25.00, 8.99]
puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)