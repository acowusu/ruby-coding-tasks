#15-------------
puts "15-------------"
##
  # 1 rock
  # 2 paper
  # 3 scisors
  # -----------------
  # | a 1 1 1 2 2 2 3 3 3
  # | b 1 2 3 1 3 2 1 2 3
  # | r d b a a b d b r d
  # ---------------
  # if the same return draw
  # -----------------
  # | a\   3 1 2 2 3 1
  # | b\   2 3 1 3 1 2
  # | r\   a a a b b b
  # ---------------
puts "lets play rock paper scisors enter \n1 for rock \n2 for paper\n3 for scisors\n"
def startRPs(player)

  computer = rand(1..3)
  result = rps(player, computer)
  result.gsub!(/A/, "You win")
  result.gsub!(/B/, "You lose")
  return result
end
def rps(a,b)
  if a == b
    return "draw"
  elsif (a ==3 && b ==2)||(a ==1 && b ==3)||(a == 2 && b ==1)
    return "A"
  else
    return "B"
  end
end
puts startRPs(gets.to_i)
