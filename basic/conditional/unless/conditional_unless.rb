cart = ['apple', 'banana', 'carrot']

# opposite of if, therefore, condition is false, execute the code.
unless cart.empty?
    puts "The first item is: #{cart[0]}"
else
    puts "The cart is empty."
end