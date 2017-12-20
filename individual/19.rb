#19-------------
puts "19-------------"
puts "lets make a deck of cards"
def deck()
  suits = ["hearts","diamonds", "spades","clubs" ]
  value = Array(2..10)
  value += ["jack", "queen", "king", "ace"]
  result = []
  for i in 0..3
    for j in 0..value.length-1
      result.push(value[j].to_s+" of "+suits[i])
    end
  end
  return result
end
puts "here is what we made"
puts deck
