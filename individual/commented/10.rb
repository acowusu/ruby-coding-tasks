
           # 
puts "10-------------"           # 
puts "starting from 1 1"           # 
def fibonacii(data)           # define function
  newnum = data[1]+data[0]           # the new number is the sum of the orevious two numbers
  puts newnum           #              output that number
  if data[2]>100           #           only do it 100 days
    return           #                 exit if more than that
  else           #                     end if
    return fibonacii([data[1],newnum,data[2]+1])           # recursivly do it so each result is based  on the prior result
  end           # 
  return [data[1],newnum]           # return the previous second element next to the new number which we calculated
end           # 
fibonacii([1,1,0])           # run it
puts "enter your own number to start from"           # 
fib =gets.to_i           # get user input
fibonacii([fib,fib,0])           # pass it into function
