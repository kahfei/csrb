puts "Enter number between 5 to 10..."
number = gets.to_i

case 
when (number < 5)
	puts "below scope"
when (number >= 5 && number <= 10)
	puts "in scope"
when (number > 10)
	puts 'out of scope'
end
