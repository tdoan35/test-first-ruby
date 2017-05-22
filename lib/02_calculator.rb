def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def multiply(arr)
  product = 1
  arr.each do |i|
    product = product*i
  end
  product
end

def power(n, exp)
  n**exp
end

def factorial(n)
  result = 1
  while n > 0
    result = result * n
    n -= 1
  end
  result
end
