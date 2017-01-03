
# function with a while-loop
def while_loop_counter(i,v,x)
  numbers = []
  while i < v
    puts "At the top i is #{i}"
    numbers.push(i)

    i += x
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  numbers.each { |num| puts num }
end

# function with a for-loop
def for_loop_counter
  numbers = (0 .. 6)
  numbers.each do |num|
    puts "At the top num is #{num}"
    if num > 0
      puts "Numbers: now: ", numbers
    end
  end
end

# call the functions
while_loop_counter(0,10,3)
for_loop_counter()
