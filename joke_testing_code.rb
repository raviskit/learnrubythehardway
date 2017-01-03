# "I don't always test my code,
# but when I do remember..."

codeInProduction = false

while codeInProduction == false
  x = rand(1..100)
  if x < 100
    testMyCode = false
    puts "No test needed today."
  else
    testMyCode = true
    puts "TEST ALL THE THINGS!"
    codeInProduction = true
    puts "...Damn it."
  end
end



# testMyCode = false
#
#
#
# while testMyCode == false
#   x = rand(1..100)
#   if x < 100
#     codeInProduction = false
#     testMyCode = false
#     puts "No test today!"
#   else
#     codeInProduction = true
#     testMyCode = true
#     puts "TEST ALL THE THINGS!"
#   end
# end
