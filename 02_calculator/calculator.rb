#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
  total = 0
  array.each do |i|
    total += i
  end
  total
end

def multiply(*numbers)
  numbers.reduce(1) { |product, n| product * n }
end

def power(a, b)
  a ** b
end

def factorial(a)
    return 1 if a <= 1
    a * factorial(a - 1)
  end
