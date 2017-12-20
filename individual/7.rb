puts "7-------------"
def mult(a,b)
  sum = 0
  b.times do
    sum+=a
  end
  return sum
end
puts "2 times 4 is :" + mult(2,4).to_s
