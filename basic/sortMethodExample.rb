fruits = ['apple', 'banana', 'pear', 'orange']
x = fruits.sort
puts x

y = fruits.sort do |fruit1, fruit2|
    fruit1.length <=> fruit2.length
end

y = fruits.sort_by {|fruit| fruit.length}
puts y