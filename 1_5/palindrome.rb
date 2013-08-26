class String
	def palindrome?
		if self == self.reverse
			true
		else
			false
		end
	end
end