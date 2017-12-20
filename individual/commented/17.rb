#17-------------           # 
puts "17-------------"           # 
def ceasor(str, places)           # defines function
  letters = Array('a'..'z')           # letters are a through to z
  result = ""           # result starts empty
  for i in 0..str.length-1           # for each letter
    for j in 0..letters.length-1           # for each letter
      if str[i] == letters[j]           # if the letters are the same

           # 
        #puts "letters [i +places] is "+( (j+places>25) ? letters[(j+places)-25] : letters[j+places])           # 
        result += (j+places>26)? letters[(j+places)-26] : letters[j+places]           # add the cyphered letter to the string
      end           # end iff
    end           # end outer for
  end           # end further out for
  return result           # return result
end           # end function
def rot13(str)           # rot 13 is special type of ceasor where thethe letters are shifted 13 places 
  return ceasor(str, 13)           # return ceasor 13
end           # end
puts " lets do rot13 cypers the rot13 of uryyb is:"           # give a pretty print
puts rot13("uryyb")           # this will output hello
puts "now put in your string to encode followed by the amount you want to shift"           # 
puts ceasor(gets.chomp, gets.to_i)           # nuw ceasor a user entered string
