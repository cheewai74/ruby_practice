prices = [7.99, 25.00, 3.99, 9.99]
puts prices.class
puts prices.first
puts prices.last
puts prices.length
puts prices.include?(25.00)
puts prices.find_index(9.99)

prices.push(0.99)
p prices

prices.pop
p prices

prices.shift 
p prices

# << adds element
prices << 5.99
prices << 8.99
p prices

# join the string to dog
puts ["d", "o", "g"].join

# join the string to d-o-g
puts ["d","o", "g"].join("-")

# ["d", "-", "o", "-", "g"]
p "d-o-g".chars

# ["d", "o", "g"]
p "d-o-g".split("-")

