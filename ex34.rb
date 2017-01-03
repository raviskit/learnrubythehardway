# everything pertaining to the quiz is contained in the function

def quiz

  # clear the screen
  puts "\e[H\e[2J"

  # gem for colorising text, very cool stuff
  require 'colorize'

  # the array of animals
  animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

  # display the list of animals, it's not a memory test
  puts "These are the animals in our array: #{animals}"

  # preparing the ordinal and cardinal arrays for the quiz
  ordinal = ["first", "second", "third", "fourth", "fifth", "sixth"]
  cardinal = [0, 1, 2, 3, 4, 5]

  # generic question for choosing the ordinal position
  chooseOrdinal = """
  What is the ordinal position of this animal?
  first
  second
  third
  fourth
  fifth
  sixth


  """

  # generic question for choosing the cardinal position
  chooseCardinal = """
  What is the cardinal position of this animal?
  0
  1
  2
  3
  4
  5


  """

  puts """
  Type the name of an animal:
  - bear
  - ruby
  - peacock
  - kangaroo
  - whale
  - platypus

  """
  print "> "

  userSelection = $stdin.gets.chomp.downcase
  case userSelection
  when "#{animals[0]}"
    puts "You chose a #{userSelection}.\n"
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[0]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[0]}"
        puts "Correct!\n".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!".colorize(:red)
    end
  when "#{animals[1]}"
    puts "You chose a #{userSelection}."
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[1]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[1]}"
        puts "Correct!".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!"
    end
  when "#{animals[2]}"
    puts "You chose a #{userSelection}."
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[2]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[2]}"
        puts "Correct!".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!"
    end
  when "#{animals[3]}"
    puts "You chose a #{userSelection}."
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[3]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[3]}"
        puts "Correct!".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!"
    end
  when "#{animals[4]}"
    puts "You chose a #{userSelection}."
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[4]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[4]}"
        puts "Correct!".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!"
    end
  when "#{animals[5]}"
    puts "You chose a #{userSelection}."
    puts chooseOrdinal
    answerOrdinal = $stdin.gets.chomp.downcase
    if answerOrdinal == "#{ordinal[5]}"
      puts "Correct!\n".colorize(:green)
      puts chooseCardinal
  		print "> "
      answerCardinal = $stdin.gets.chomp
      if answerCardinal == "#{cardinal[5]}"
        puts "Correct!".colorize(:green)
      else
        puts "Incorrect cardinal number!".colorize(:red)
      end
    else
      puts "Incorrect ordinal number!".colorize(:red)
    end
  else
    puts "I know no such animal."
  end

end

quiz()
