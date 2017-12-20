#23-------------
def validemail(str)
  str = str.gsub!(/[a-z0-9\.@]/, "")
  if str != ""
    return ["invalid email you have the following illegal charactors"+ str ,FALSE]
  end
  return ["this is a valid email", TRUE]
end
puts validemail(gets.chomp)[0]
