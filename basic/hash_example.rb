# Note: hash aree unordered

car = {
    'brand' => 'Ford',
    'model' => 'Mustang',
    'color' => 'blue',
    'interior_color' => "tan"
}

puts car.keys
puts car['model']
puts car['brand']
puts car['color']
puts car['interior_color']
car['doors'] =2
puts car['doors']
puts car.keys
puts car.values
puts car.length
puts car.size
puts car.to_a