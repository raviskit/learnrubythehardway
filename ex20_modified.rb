input_file = ARGV.first

def print_a_line(f)
  puts "#{f.gets}"
end

current_file = open(input_file)

puts "print_a_line(open(ARGV.first))"
print_a_line(open(ARGV.first))
print_a_line(open(ARGV.first))
print_a_line(open(ARGV.first))

puts "print_a_line(open(input_file))"
print_a_line(open(input_file))
print_a_line(open(input_file))
print_a_line(open(input_file))

puts "print_a_line(current_file)"
print_a_line(current_file)
print_a_line(current_file)
print_a_line(current_file)
# # barfoo = barfoo + 1
# print_a_line(current_file)
