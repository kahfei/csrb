#equation = "3y = 4x + 8"
#equation = "3x - 5y = 25"
#equation = " 4x  = 25 + 3y"
equation = " 3 - 2x = y"

def get_elements(eq)
	eq.delete(" ").scan(/[\+|\-]*\d*[a-zA-Z]|\=|[\+|\-]*\d+/)
end

def add_coe(eq)
	elements = []
	eq.each do |item|
		if item[/[\d+\b]|\d+[a-zA-Z]/]
			elements << add_sign(item)
		elsif item[/\=/]
			elements << item			
		elsif item[/[a-zA-Z]/]
			elements << (add_sign("1" + item))
		end
	end
	elements
end

def add_sign(string)
	if string[/^[\+|\-]/]
		string
	else
		"+" + string
	end
end

def switch_sign(string)
	if string[/\+/]
		string.gsub("+","-")
	else
		string.gsub("-","+")
	end
end

def move_elements(eq)
	left = []
	
	equal_index = eq.index("=")
	eq.each_index {|i| @constant_index = i if eq[i][/\d+\b/]}
	# if constant value at last item, and there are elements between equal sign and constant 
	#p eq[@constant_index] == eq.last
	 #p eq[(equal_index+1)..@constant_index]
	if eq[(equal_index+1)..-1].length > 1
		(eq[(equal_index + 1)..-1]-(eq[@constant_index]).split).each do |element|
			left << eq[0...equal_index] << switch_sign(element)
		end
	else
		left = eq[0..equal_index]
	end



	puts "#{left.join} = #{eq[@constant_index]}"
end

p add_coe(get_elements(equation))
move_elements(add_coe(get_elements(equation)))

