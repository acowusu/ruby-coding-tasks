#18-------------
puts "18-------------"
puts "dice :"
def doDice(range, number)
  result = []
  number.times do
    result.push(rand(1..range))
  end
  return result
end
print"enter the number of faces on the dice"
dicerange = gets.to_i
print "enter the number of dice you want to roll"
dicenumber = gets.to_i
puts "roll another"
print"enter the number of faces on the dice"
dicerange1 = gets.to_i
print "enter the number of dice you want to roll"
dicenumber1 = gets.to_i
puts doDice(dicerange1, dicenumber1)
puts doDice(dicerange, dicenumber)

puts "eg 4 faces three rolls"
puts doDice(4, 3)
