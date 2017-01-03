good_pod = rand(1..5)
puts good_pod

print "[pod #] "
guess = $stdin.gets.chomp.to_i

if guess != good_pod
  puts """You jump into pod %s and then you die.""" % guess
else
  puts "You jump into pod %s and then you live." % guess
end
