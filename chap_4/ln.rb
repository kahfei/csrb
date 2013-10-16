#equation = " 3 - 2x = y"
#equation = " 2x = y-3+4x"
equation = "-10x = 2y + 6"
def add_sign(string)
	if string[/^[\+|\-|\=]/]
		string
	else
		"+" + string
	end
end

def add_coe(string)
	if string[/^[a-zA-Z]/]
		"1" + string
	else
		string
	end
end
def switch_sign(string)
	if string[/\+/]
		string.gsub("+","-")
	else
		string.gsub("-","+")
	end
end


def elements(eq)
	eq.delete(" ").scan(/[+-]*\d*[a-zA-Z]|\=|[+-]*\d+/).map { |e| add_sign(add_coe(e)) }
end
constant = elements(equation).join[/[+-]*\d+\b/]


p constant
# index of equal sign 
equal_sign_index = elements(equation).index("=")
# index of constant
constant_index = elements(equation).index(constant)


# split to two array
array_one = elements(equation)[0...equal_sign_index]
array_two = elements(equation)[(equal_sign_index + 1)..-1]



if constant_index < equal_sign_index # constant in array_one
	array_one.each do |e|
		array_two << switch_sign(e) unless e == constant
	end
	p array_two.join + "=" + constant

else # constant in array_two
	array_two.each do |e| 
 		array_one << switch_sign(e) unless e == constant
 	end
 	p array_one.join + "=" + constant
end


# http://www.mathsisfun.com/algebra/systems-linear-equations-matrices.html
# https://www.khanacademy.org/math/algebra/algebra-matrices/inverting_matrices/v/matrices-to-solve-a-system-of-equations
# http://stackoverflow.com/questions/10577783/ruby-checking-if-a-string-can-be-converted-to-an-integer










