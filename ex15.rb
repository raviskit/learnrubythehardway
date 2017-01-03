# Get the input file
filename = ARGV.first

# Declare a variable to open the input file
txt = open(filename)

# Output the contents of the  input file
puts "Here's your file #{filename}"
print txt.read


# Ask the user to name the input file, implicitly in the local directory
print "Type the filename again: "

# Use stdin to obtain the name of the input file from the local directory
#file_again = $stdin.gets.chomp
file_again = gets.chomp

# Declare another variable to open the input file again
txt_again = open(file_again)

# Output the contents of the input file again
print txt_again.read
