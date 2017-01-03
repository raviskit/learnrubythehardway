# List of boolean statements to test my knowledge thereof,
# organised in a two-dimensional array
booleanTest = [
  ["true && true", true && true, true],
  ["false && true", false && true, false],
  ["1 == 1 && 2 == 1", 1 == 1 && 2 == 1, false],
  ['"test" == "test"', "test" == "test", true],
  ["1 == 1 || 2 != 1", 1 == 1 || 2 != 1, true],
  ["true && 1 == 1", true && 1 == 1, true],
  ["false && 0 != 0", false && 0 != 0, false],
  ["true || 1 == 1", true || 1 == 1, true],
  ['"test" == "testing"', "test" == "testing", false],
  ["1 != 0 && 2 == 1", 1 != 0 && 2 == 1, false],
  ['"test" != "testing"', "test" != "testing", true],
  ['"test" == 1', "test" == 1, false],
  ["!(true && false)", !(true && false), true],
  ["!(1 == 1 && 0 != 1)", !(1 == 1 && 0 != 1), false],
  ["!(10 == 1 || 1000 == 1000)", !(10 == 1 || 1000 == 1000), false],
  ["!(1 != 10 || 3 == 4)", !(1 != 10 || 3 == 4), false],
  ['!("testing" == "testing" && "Zed" == "Cool Guy")', !("testing" == "testing" && "Zed" == "Cool Guy"), true],
  ['1 == 1 && (!("testing" == 1 || 1 == 0))', 1 == 1 && (!("testing" == 1 || 1 == 0)), true],
  ['"chunky" == "bacon" && (!(3 == 4 || 3 == 3))', "chunky" == "bacon" && (!(3 == 4 || 3 == 3)), false],
  ['3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))', 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")), false]
]

# Colorize gem to mark the result green or red.
require 'colorize'

# Testing loop
puts "Here are the results of my test:\n\n"
booleanTest.each do|description,result,prediction|
  puts "PREDICTION: #{description} GIVES #{prediction}, RESULT: #{result}"
  if prediction == result
    puts "Correct!".colorize(:green)
  else
    puts "Incorrect!".colorize(:red)
  end
end
