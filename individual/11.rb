puts "11-------------"
def palinodrone(inp)
  for i in 0..(inp.length/2).floor-1
    if inp[i] != inp[(inp.length-1)-i]
      return false
    end
  end
  return true
end
puts "abc is a palinodrone : " + palinodrone("aq").to_s
puts "aba is a palinodrone : " + palinodrone("aqa").to_s
