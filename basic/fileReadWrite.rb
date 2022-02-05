review_file = File.open("C:\\Users\\moses\\OneDrive\\Documents\\ruby_practice\\basic\\review.txt")
lines = review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
review_file.close