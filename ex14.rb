# To run this, execute `$ ruby ex14.rb` with your name (as an argument) after the file name

user_name = ARGV.first # Places the first argument into the user_name variable
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
print prompt
lives = $stdin.gets.chomp

# Using a comma after one string with `puts` is similar to using `puts` twice
puts "What kind of computer do you have? " #, prompt
print prompt
computer = $stdin.gets.chomp.downcase

puts """
Alright, so you said '#{likes}' about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
