print "How old are you? "
age = gets.chomp # gets is a method for user input, defaults to string value
print "How tall are you? "
height = gets # .chomp removes the line break from the end of the variable so that the final puts statement here doesn't linebreak
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
