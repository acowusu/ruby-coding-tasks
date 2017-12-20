#22-------------           # 
puts "22-------------"           # 
#puts "the contents of examolefile.txt are:"           # 
fileofinterest = "1.txt"           # this is thhe file we are looking at

           # 
def occurences(file)           # 
  fileString  = File.read(file).to_s           # the text of the file is stored
  fileString = fileString.chars.sort.join           # we sort it
  #puts "the ordered charactors are"           # 
  #puts fileString           # 
  write_handler = File.new(file+"_result.out", "w")           # create a new file called that _out

           # 
  result = ""           # 
  values = Hash.new(0)           # create new hashtable
  fileString.chars.each  do |char|           # for each of the chara\actors
    values[char.to_s] +=1           # add it to the hash
  end           # 
  values = values.sort_by {|_key, value| value}           # sort by lmost common letter
  values = values.reverse           # reverse it
  values.each do |val|           # for each value
    write_handler.puts val[1].to_s+ ":"+val[0].to_s           # add it to the new file
  end           # end
  write_handler.close           # close file
  return result           # return resullt
end           # 
occurences(fileofinterest)           # 
