#16-------------
puts "16-------------"
puts " lets shuffle a list \nit started like this : \n[1,2,3,4,5] \nthe result is "
def shuffle(list)
  list.sort_by { rand }
end
print shuffle([1,2,3,4,5])
puts 
