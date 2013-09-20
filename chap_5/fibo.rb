#find the first 20 fibo number
#0,1,1,2,3...

def fibo(n)
	if n == 1
		return 0
	elsif n == 2
		return 1
	else
		fibo(n-1) + fibo(n-2)
	end
end

(0...20).each do |i|
	p fibo(i)
end
			