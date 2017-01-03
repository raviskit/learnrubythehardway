rubyLexicon = {
"puts": "prints text",
"=": "equals sign",
"+": "plus sign, addition",
"-": "minus sign, subtraction",
"/": "divide sign, forward slash, division",
"*": "multiply sign, multiplication",
"%": "remainder",
"% {}": "I'm unsure",
">=": "greater than or equals",
"<=": "less than or equal",
"{}": "curly brackets",
"\"\"": "escape slash, backslash",
"variable": "string that can be declared for use in functions",
'\n': "carriage return",
"ARGV": "argument vector",
"ARGV.first": "declaration of the first argument provided to the program",
"ARGV.first.read": "call to read the declaration of the first argument provided to the program",
"ARGV.first.seek()": "call to seek the declaration of the first argument provided to the program",
"gets": "receive user input",
"gets.chomp": "receive user input and remove tracking to the next line",
"ARGV.first.gets.chomp": "receive first argument provided to the program as input",
"f.gets.chomp": "receive as input the variable 'f'",
"6'2\"": "backslash before double quotation marks",
'6\'2"': "backslash before single quotation marks",
'""" """': "triple quotation marks",
"to_i": "convert to integer",
"to_f": "convert to fraction",
"round()": "round up the number to the closest integer",
"$stdin": "standard input",
"$stdin.gets": "compels the program to read user input instead ARGV.first",
"open(filename)": "open a file in read mode",
"open(filename).read": "open a file in read mode",
"open(filename).truncate(0)": "open a file in write mode, and delete contents",
"open(filename, 'w')": "open a file in write mode, and delete contents",
"open(filename, 'w').write": "open a file in write mode and write to it",
"open(filename).close": "close an opened file",
"IO.readlines(filename)[0]": "read the numerated line, 0 = first, 1 = second, etc.",
"File.new(ARGV[0])": "open the file defined by the first argument provided",
"File.new(ARGV[0]).write(File.read(ARGV[1]))": "open the file defined by the first argument provided and write its contents to the file defined by the second argument provided",
"def any_function(*args)": "define a function with any number of variables",
"def any function(arg1, arg2)": "define a function with a fixed number of variables",
"\#{arg1}": "interpolate a variable into a string"

}

# puts rubyLexicon["puts"]
puts "\nHere are the terms I've learned so far:\n\n"
rubyLexicon.each do|name,key|
  puts "#{name}: #{key}"
end
