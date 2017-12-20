def autocomment(file)
  lines  = File.readlines(file)
  lines.map! do |line|
    print line[0..line.length-2]+"           # "
    line = line[0..line.length-2]+"           # "+gets
  end
  File.open("commented/"+file, "w+") do |f|
    lines.each { |element| f.puts(element) }
  end
end
for i in 1..27 do
  autocomment(i.to_s+".rb")
end
