# To run this, execute `$ ruby ex17.rb` with any two file names (where the first file has content (in this case we can use test.txt)) as arguments after the file name

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file)
in_data = in_file.read

puts "The input file is #{in_data.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}" # File.exist? checks if the file location passed in exists at all, not for content
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w') # Creates (or overwrites if it exists) a new file with the path of to_file in 'write only' mode
out_file.write(in_data) # Writes the exact contents of from_file

puts "Alright, all done."

out_file.close
in_file.close
