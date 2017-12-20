numbers  = File.read("sites.txt").to_s.chomp
numbers.chomp
#print numbers.chars.sort
 numbers = numbers.chars.sort
puts numbers.join
#numbers.chars.sort.join
#puts numbers
#
