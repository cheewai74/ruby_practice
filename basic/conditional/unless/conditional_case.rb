"""

case
when boolean
    # ...
when boolean
    # ...
else
    # ...
end


case test_value
when value
    # ...
when value
    # ...
else
    # ...
end

"""

count = rand(0..10)
#count = 10
case 
when count == 0
    puts "nobody"
when count == 1 && count.odd
    puts "1 person"
when (2..5).include?(count)
    puts "several people"
else
    puts "many people"
end

case count
when 0
    puts "nobody"
when 1
    puts "1 person"
when 2..5
    puts "several people"
else
    puts "many people"
end