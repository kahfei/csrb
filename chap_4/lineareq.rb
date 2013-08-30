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
  left = eq.delete(' ').split("=")[0]
  right = eq.delete(' ').split("=")[1]

  #if left[/\+|\-/]



end

prepare("y = 4x + 8")


# http://www.mathsisfun.com/algebra/systems-linear-equations-matrices.html
# https://www.khanacademy.org/math/algebra/algebra-matrices/inverting_matrices/v/matrices-to-solve-a-system-of-equations
# http://stackoverflow.com/questions/10577783/ruby-checking-if-a-string-can-be-converted-to-an-integer