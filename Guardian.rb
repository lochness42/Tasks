def fib(n)
	fail("input is not integer") if !n.is_a?(Integer)
	fail("nonpositive input is not allowed") if n < 1
	return 1 if n == 1 || n == 2
	previous = 1
	current = 1
	temp = 0
	for i in 3..n
	  temp = previous
	  previous = current
	  current = temp + previous
	end
	return current
end

def parCheck?(string)
	counter = 0
	string.each_char do |char|
	  counter += 1 if char == '('
	  counter -= 1 if char == ')'
	  break if counter < 0
	end 
	return counter == 0
end