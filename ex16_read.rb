filename = ARGV.first

puts "We're going to have a look at #{filename}"
puts "If you want to cancel, hit CTRL-C"
puts "If you want to proceed, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename)

puts "Here is the first line"
first_line = IO.readlines(filename)[0]
puts first_line + "\n"
puts "Here is the second line"
second_line = IO.readlines(filename)[1]
puts second_line + "\n"
puts "Here is the third line"
third_line = IO.readlines(filename)[2]
puts third_line + "\n"

puts "And here is the whole text: " + "\n\n"
full_text = target.read
puts full_text
