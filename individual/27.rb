#27-------------
puts "enter a binary number"
def bintodec(str)
 return str.to_i(2)
end
puts bintodec(gets.chomp)

def dectobin(str)
  return str.to_i.to_s(2)
end
def hextobin(str)
  return ("0x"+str).to_i(16).to_s(2)
end
def dectohex(str)
  return "0x"+str.to_i.to_s(16)
end
puts "decimal to binary converter"
puts "enter a decimal number"
puts dectobin(gets.chomp)

puts "hexidecimal to binary converter"
puts "enter a hexidecimal number"
puts hextobin(gets.chomp)

puts "decimal to hexidecimal converter"
puts "enter a decimal number"
puts dectohex(gets.chomp)
