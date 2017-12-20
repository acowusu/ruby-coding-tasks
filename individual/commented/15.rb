#15-------------           # 
puts "15-------------"           # 
# 1 rock           # 
# 2 paper           # 
# 3 scisors           # 
# -----------------           # 
# | a 1 1 1 2 2 2 3 3 3           # 
# | b 1 2 3 1 3 2 1 2 3           # 
# | r d b a a b d b r d           # 
# ---------------           # 
# if the same return draw           # 
# -----------------           # 
# | a\   3 1 2 2 3 1           # 
# | b\   2 3 1 3 1 2           # 
# | r\   a a a b b b           # 
# ---------------           # 
puts "lets play rock paper scisors enter \n\r1 for rock \n\r2 for paper\n\r3 for scisors\n\r"           # 
def startRPs(player)           # defines function

           # 
  computer = rand(1..3)           # the computers choice is random
  #computer  = 1           # 
  result = rps(player, computer)           # call function with user and computer choices as inputs
  result.gsub!(/A/, "You win")           # replace A with You win
  result.gsub!(/B/, "You lose")           # replace B with you lose
  return result           # 
end           # 
def rps(a,b)           # takes in two variables a and b
  #  puts "you chose" + a.to_s           # 
  #  puts "computer chose"+ b.to_s           # 
  if a == b           # if they are the same it is a draw
    return "draw"           # 
  elsif (a ==3 && b ==2)||(a ==1 && b ==3)||(a == 2 && b ==1)           # 
    return "A"           # if a shoud winn say as much
  else           # 
    return "B"           # otherwise b wins
  end           # 
end           # 
puts startRPs(gets.to_i)           # play rock paper scisors game
