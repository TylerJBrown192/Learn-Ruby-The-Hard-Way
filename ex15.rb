# To run this, execute `$ ruby ex15.rb` with the sample file name (ex15_sample.txt) as an argument after the file name

filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read