print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number:"
another = gets.chomp
number = another.to_i
number_fraction = another.to_f
smaller = number / 100
smaller_fraction = number_fraction / 1000
puts "A smaller integer is #{smaller}."
puts "A smaller fraction is #{smaller_fraction}"

print "Pay me the sum: "
payment = gets.chomp.to_f
change = (payment * 0.1).round(2)
puts "You paid $#{payment} your change is $#{change}."
