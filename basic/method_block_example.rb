"""

1. The start of the block is marked with the keyword do and the end is marked by the keyword end.
2. When the block is called from the method, the code in the block body will be executed.
3. After the block runs, control returns to the method that  invoked it.

"""

def my_method(&my_block)
    puts "We're in the method, about to invoke your block!"
    my_block.call
    puts "We're in the method!"
end

my_method do
    # Refer to point 1, ut wukk be stored in the "my_block" parameter.
    puts "We're in the block!"
end

def twice(&my_block)
    puts "In the method, about to call the block!"
    my_block.call # Call the block
    puts "Back in the method, about to call the block again!"
    my_block.call # call the block again
    puts "Back in the method, about to return!"
end

twice do
    puts "Woooo!"
end

# Block to accept one or more parameters
# Defining them using | characters

# def give(&my_block)
#     my_block.call("2 turtle doves","1 partridge")
# end

# The yield keyword will find and invoke the block a method was called with
# - there's no need to declare a parameter to accept the block

def give
    yield "2 turtle doves", "1 partridge"
end

give do |present1, present2|
    puts "My method give to me..."
    puts present1, present2
end

# { }  start of block and end of block

def run_block
    yield
end

run_block do
    puts "do/end"
end

run_block{puts "braces"}
