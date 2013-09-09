equation = "3y = 4x + 8"


def get_constant_result(eq)
	eq.scan(/[\+|\-]\d+\b/)
end

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
			elements << ("1" + add_sign(item))
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

def move_elements(eq)
	equal_index = eq.index("=")
end


