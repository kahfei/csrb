equations = ["y = 4x + 8",
			"5y = 3x + 20"]


def getElements(eq)
  elements = []
  eq.scan(/\d*[a-zA-Z]/).each do |element|
  	element = "1" << element unless element[/\d/]
  	elements << element
  end
  p elements
end
#getElements("y = 4x + 8")

def prepare(eq)
  #remove spaces and split equation to two parts
  left = eq.delete(' ').split("=")[0]
  right = eq.delete(' ').split("=")[1]

  #compare right and left, assign value without algebra to constant_value
  constant_value = left.scan(/[\+|\-]\d+\b/) && right.scan(/[\+|\-]\d+\b/)

  new_left = []
  [left, right].each do |element|
    if element.include?(constant_value[0])
      new_left << element.delete(constant_value[0])

    end
  end
  puts "new_left is #{new_left}"
  puts "constant_value is #{constant_value[0]}"

end



prepare("y = 4x + 8")


# http://www.mathsisfun.com/algebra/systems-linear-equations-matrices.html
# https://www.khanacademy.org/math/algebra/algebra-matrices/inverting_matrices/v/matrices-to-solve-a-system-of-equations
# http://stackoverflow.com/questions/10577783/ruby-checking-if-a-string-can-be-converted-to-an-integer