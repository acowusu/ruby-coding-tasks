#17-------------
puts "17-------------"
def ceasor(str, places)
  letters = Array('a'..'z')
  result = ""
  for i in 0..str.length-1
    for j in 0..letters.length-1
      if str[i] == letters[j]
        result += (j+places>26)? letters[(j+places)-26] : letters[j+places]
      end
    end
  end
  return result
end
def rot13(str)
  return ceasor(str, 13)
end
puts " lets do rot13 cypers the rot13 of uryyb is:"
puts rot13("uryyb")
puts "now put in your string to encode followed by the amount you want to shift"
puts ceasor(gets.chomp, gets.to_i)
