class Integer
  def square	 
  	self * self
  end

  def exp(n)
  	if n == 0
  		1
  	elsif n == 1
  		self
  	else
  		self * exp(n-1)
  	end
  end

end

		