puts "5-------------"
print "enter a number and we will see if it is even \n number: "
def even(test)
  return test.modulo(2).zero?
end
puts (even(gets.to_i))? "it is even" : "no its not even its odd"
