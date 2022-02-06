
# looping an array via each
[1, 2, 3].each { |n| puts "Current number is: #{n}" }

# looping hash via each
my_hash = {min: 2, max: 5}
my_hash.each { |key, value| puts "k: #{key}, v: #{value}" }

# drop(n) skips the first n elements and uses the rest for the loop.
[1, 2, 3, 4 ,5].drop(3).each { |i| puts i }

# Break out of each block
[1,2,3].each do |i|
    break if i == 3
    puts i
  end

# ==========  For Vs Each  ========================
"""
There is a scope difference. After the for loop runs, 
the iterator variable (i.e. i) still exists. 
That doesn’t happen with each, 
because each introduces a new lexical scope.
"""

# imperative for
for i in [1,2,3] do
    puts i
  end
  
# functional each
[1,2,3].each { |i| puts i }


last_value = [1, 2, 3].each do |n|
    break n if n % 2 == 0
  end
# You should use each over for. 
# It is more idiomatic, and faster than for.

# Looping via list 
# It takes two parameters. 
# The first one is the element, and 
# the second one is the index
['a', 'b', 'c'].each_with_index { |el, i| puts i }

# Looping via hash
[1, 2, 3].each_with_index { |(k, v), i| puts i }