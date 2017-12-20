puts "12-------------"
print "this app checks the number of ech type of charactor\nrenter a string to check: "
def charCouunt(str)
  result = [0,0,0,0]
  str.gsub!(/[a-z]/, "l")
  str.gsub!(/[A-Z]/, "u")
  str.gsub!(/[0-9]/, "d")
  for i in 0..str.length-1
    if str[i] == "l"
      result[0] +=1
    elsif str[i] == "u"
      result[1] +=1
    elsif str[i] =="d"
      result[2] +=1
    else
      result[3] +=1
    end
  end
  return result
end
chars = charCouunt(gets.chomp)
print "lowercase: "
puts chars[0]
print "uppercase: "
puts chars[1]
print "numbers: "
puts chars[2]
print "symbols: "
puts chars[3]
