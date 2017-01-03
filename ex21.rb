def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end
def subtract(a, b)
  puts "SUBTRACTING #{a} + #{b}"
  return a - b
end
def multiply(a, b)
  puts "MULTIPLYING #{a} + #{b}"
  return a * b
end
def divide(a, b)
  puts "DIVIDING #{a} + #{b}"
  return a / b
end

puts "Let's do some math with just functions"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

def what_formula(first,second,third,fourth)
  second = second - (third * (fourth / 2))
  puts "This is what I got:"
  return first + second

end

puts what_formula(age,height,weight,iq)
