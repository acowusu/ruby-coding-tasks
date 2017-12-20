puts "11-------------"           # 
def palinodrone(inp)           # defines function
  for i in 0..(inp.length/2).floor-1           # for each of the for half of the string length
    if inp[i] != inp[(inp.length-1)-i]           # if the last wlenent is not the same as the first element
      return FALSE           # it is not a palinodrone this means we return false
    end           # end
  end           # end
  return TRUE           # otherwise if we have not had to return false it must be true so we return that
end           # end
puts "abc is a palinodrone : " + palinodrone("aq").to_s           # g
puts "aba is a palinodrone : " + palinodrone("aqa").to_s           # give a pretty interface
