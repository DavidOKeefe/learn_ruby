def add (num1,num2)
	num1 + num2
end

def subtract (num1,num2)
	num1 - num2
end

def sum (arr)
	return 0 if arr.empty?
  arr.inject(:+)
end

def multiply (num1,num2)
  num1 * num2
end