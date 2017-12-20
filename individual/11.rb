puts "11-------------"
def palinodrone(inp)
  for i in 0..(inp.length/2).floor-1
    if inp[i] != inp[-(i+1)]
      return false
    end
  end
  return true
end
puts "abcdef is a palinodrone : #{palinodrone("abcdef").to_s}"
puts "abcdcba is a palinodrone : #{palinodrone("abcdcba").to_s}"
