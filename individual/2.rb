puts "2a-------------"
puts "enter your three numbers"
def highest(numbers)
  numbers = numbers.sort
  return numbers[numbers.length-1]
end
puts highest([gets.to_i,gets.to_i,gets.to_i])
