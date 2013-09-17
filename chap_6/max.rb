class Array
	def max
		index = 0
		max = self[0]
		while index < self.size
			if self[index] > max
			  max = self[index]
			end
			index += 1
		end
		puts max 
	end

	def min
		index = 0
		min = self[0]
		while index < self.size
			if self[index] < min
				min = self[index]
			end
			index += 1
		end
		puts min
	end

end 
