#prime number is a natural number greater than 1, 
# has no positive divisors others than 1 and itself

class Integer
	def isPrime? 
		if (self == 0 || self == 1 )
			return false
		else
			for i in (2..Math.sqrt(self))
				if self % i == 0
					return false
				end
			end
			return true
		end
	end
end

def prime_numbers_for (num)
	prime_numbers = []
	for i in (2..num)
		prime_numbers << i if i.isPrime?
	end
	p prime_numbers
end
