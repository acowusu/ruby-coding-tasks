#23-------------           # 
def validemail(str)           # takes a string and checks if it is a valid email
  str = str.gsub!(/[a-z0-9\.@]/, "")           # replace any valid charactors with nothing
  if str != ""           # if anything is left it is invalid
    return ["invalid email you have the following illegal charactors"+ str ,FALSE]           # give that as the result with other helpful information
  end           # 
  return ["this is a valid email", TRUE]           # if it is a valid email return true7
end           # 
puts validemail(gets.chomp)[0]           # gets a user example and prints the pretty result
