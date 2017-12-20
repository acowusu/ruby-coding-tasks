puts "6-------------"           # 
def numsbefore(number, odd = FALSE)           # funnction takes the sum of th numbers before a givern number the optionalodd param is if you only want the odd numbers before
  sum = 0           # sum has to start at zero
  if odd           # if it is odd
    for i in 1..number           # from 1 to that number 
      if !(i.modulo(2).zero?)           # it
        sum += i           # the sum is increaced by one
      end           # endif
    end           # endfo
  else           # otherwise
    for i in 1..number           # in range 1..number
      sum += i           # so same as before
    end           # endfor
  end           # end else

           # 
  return sum           # return the sum of those numbers
end           # end fun function
print "all munbers before"           # 
puts numsbefore(gets.to_i)           # prints the sum of all the numbers before a youser entered number
print "odd munbers before"           # 
puts numsbefore(gets.to_i, TRUE)           # the true param here shows that we only want off numbers
