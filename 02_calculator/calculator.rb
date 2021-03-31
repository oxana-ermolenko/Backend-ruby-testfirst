#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  sum = 0
  arr.each {|i| sum += i}
  sum
end

def multiply(*numbers)
  multiply = 1
  numbers.each {|n| multiply *= n}
  multiply
end

def power(num)
  num * num
end

def factorial(num)
  (1..num).inject(:*) || 1
end