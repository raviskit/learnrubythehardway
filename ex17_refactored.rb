puts "Copying from #{ARGV[0]} to #{ARGV[1]}"
File.new(ARGV[0], 'w').write(File.read(ARGV[1]))
puts "Alright, all done."
