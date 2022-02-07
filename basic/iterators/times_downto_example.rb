i = 5
i.times do 
    puts "Countdown #{i}"
    i -= 1
end
puts "Blast off!"

5.times do |i|
    puts "Countdown #{5-i}"
    #i -= 1
end
puts "Blast off!"

5.downto(1) do |i|
    puts "Countdown #{i}"
end
puts "Blast off!"

fruits = ["banana", "apple", "pear"]
fruits.each do |fruit|
    puts fruit.upcase
end 