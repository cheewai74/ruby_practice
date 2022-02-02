def test
    puts "You are in the method."
    yield 
    puts "You are again back to the method."
    yield
end

test {puts "You are in the block"}

def test2
    yield 5
    puts "You are in the method test"
    yield 100
end

# You place a variable between two vertical lines (||)
# to accept the parameters.
# test2 {|a, b| statement } -- Pass more than 1 parameter.
test2 {|i| puts "You are in the block #{i}"}

def test3
    yield 
end
test3 {puts "Hello World"}
