puts "6-------------"
def numsbefore(number, odd = false)
  sum = 0
  if odd
    for i in 1..number
      if !(i.modulo(2).zero?)
        sum += i
      end
    end
  else
    for i in 1..number
      sum += i
    end
    
  end

  return sum
end
print "all munbers before"
puts numsbefore(gets.to_i)
print "odd munbers before"
puts numsbefore(gets.to_i, true)
