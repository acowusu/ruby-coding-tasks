#19-------------           # 
puts "19-------------"           # 
puts "lets make a deck of cards"           # 
def deck()           # defines function
  suits = ["hearts","diamonds", "spades","clubs" ]           # array of suits
  value = Array(2..10)           # array of face values
  value += ["jack", "queen", "king", "ace"]           # add the picture cards
  result = []           # result starts empty
  for i in 0..3           # from 0 to 3
    for j in 0..value.length-1           # for each of the cards
      result.push(value[j].to_s+" of "+suits[i])           # add the suit and the valuee to the resuklt string array#
    end           # 
  end           # 
  return result           # 
end           # 
puts "here is what we made"           # 
puts deck           # 
