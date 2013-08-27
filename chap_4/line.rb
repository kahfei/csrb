puts "coordination of x1 for point 1..."
x1 = gets.to_i
puts "coordination of y1 for point 1..."
y1 = gets.to_i

puts "coordination of x2 for point 2..."
x2 = gets.to_i
puts "coordination of y2 for point 2..."
y2 = gets.to_i

case 
when (x1 == x2)
	puts "these points can form a vertical line"
when (y1 == y2)
	puts "there points can form a horizontal line"
end
	
