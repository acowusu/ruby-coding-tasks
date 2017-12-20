puts "2a-------------"           #    
puts "enter your three numbers"           # writes line
def highest(numbers)           #            defines function
  numbers = numbers.sort           #        sorts numbers array
  return numbers[numbers.length-1]           # returns last element of that array which will be the highest number
end           #  			       ends function
puts highest([gets.to_i,gets.to_i,gets.to_i])           # gets user input and outputs highest number using function above
