"""
The map takes each element of an array, passes it to a 
block, and builds a new array out of the values the block 
return
"""

numbers = [2,3,4]
squares = []
numbers.each do |number|
    # Perform an operation and copy results to results array.
    squares << number ** 2
end 
p squares

squares = [2,3,4].map{|number| number ** 2}
p squares
