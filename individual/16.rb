#16-------------
puts "16-------------"
puts " lets shuffle a list \n\rit started like this : \n\r[1,2,3,4,5] \n\rthe result is "
def shuffle(list)
  list.sort_by { rand }
end
print shuffle([1,2,3,4,5])
puts ""
