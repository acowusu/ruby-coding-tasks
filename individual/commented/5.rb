puts "5-------------"           # 
print "enter a number and we will see if it is even \n\r number: "           # ||only need /n /r is not necessary
def even(test)           # 
  return (test.modulo(2).zero?)? TRUE : FALSE           # if its even rerurn true otherwise false - typical use of the turnary opperator
end           # end function
puts (even(gets.to_i))? "it is even" : "no its not even its odd"           # outputs a ueser friendly message on whether their number is even
