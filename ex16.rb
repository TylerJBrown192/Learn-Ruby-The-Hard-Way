# To run this, execute `$ ruby ex16.rb` with any file name (in this case we can use test.txt) as an argument after the file name

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets # Essentially a placeholder for the statement above, stopping the user after that point to either continue with the script or escape it

puts "Opening the file..."
target = open(filename, 'w') # Opens the file in 'Write-only' mode. This will immediately overwrite any file, or create one if one with that name doesn't exist

puts "Truncating the file.  Goodbye!"
# target.truncate(0) # Method for File manipulation (child of I/O), truncating the file to be at most (argument) bytes long. Can be called at any point in the file's life cycle, and is meaningless in this context.

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("" + line1 + "\n" + line2 + "\n" + line3 + "\n") # Write can only be called in the I/O process if the 'target' is currently open and in 'write' mode

puts "And finally, we close it."
target.close 