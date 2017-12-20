#22-------------
puts "22-------------"
#puts "the contents of examolefile.txt are:"
fileofinterest = "1.txt"

def occurences(file)
  fileString  = File.read(file).to_s
  fileString = fileString.chars.sort.join
  #puts "the ordered charactors are"
  #puts fileString
  write_handler = File.new(file+"_result.out", "w")

  result = ""
  values = Hash.new(0)
  fileString.chars.each  do |char|
    values[char.to_s] +=1
  end
  values = values.sort_by {|_key, value| value}
  values = values.reverse
  values.each do |val|
    write_handler.puts val[1].to_s+ ":"+val[0].to_s
  end
  write_handler.close
  return result
end
occurences(fileofinterest)
