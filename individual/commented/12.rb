puts "12-------------"           # 
print "this app checks the number of ech type of charactor\n \renter a string to check: "           # 
def charCount(str)           # define function
  result = [0,0,0,0]           # make array of length 4
  str.gsub!(/[a-z]/, "l")           # raplace all the lowercase letters with 1
  str.gsub!(/[A-Z]/, "u")           # replase all the uppercase letters with u
  str.gsub!(/[0-9]/, "d")           # replace all the numbers with d
  for i in 0..str.length-1           # for each of the letters
    if str[i] == "l"           # if the letter is 1
      result[0] +=1           # increace the counter for lowercase letters by one
    elsif str[i] == "u"           # otherwise if it is u
      result[1] +=1           # increace the capial counter by one
    elsif str[i] =="d"           # otherwise if it is a didgit increace the digit counter
      result[2] +=1           # if it is none of these it must be a special charactor
    else           # 
      result[3] +=1           # 
    end           # 
  end           # 
  return result           # 
end           # 
chars = charCount(gets.chomp)           # run it
print "lowercase: "           # 
puts chars[0]           # 
print "uppercase: "           # 
puts chars[1]           # 
print "numbers: "           # 
puts chars[2]           # 
print "symbols: "           # 
puts chars[3]           # 
