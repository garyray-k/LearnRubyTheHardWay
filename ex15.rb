filename = ARGV.first

text = open(filename)

puts "Here's you file #{filename}:"
print text.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

text_again = open(file_again)

print text_again.read

text.close
text_again.close