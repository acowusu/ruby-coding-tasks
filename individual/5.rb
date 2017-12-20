puts "5-------------"
print "enter a number and we will see if it is even \n\r number: "
def even(test)
  return (test.modulo(2).zero?)? TRUE : FALSE
end
puts (even(gets.to_i))? "it is even" : "no its not even its odd"
