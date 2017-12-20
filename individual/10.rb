
puts "10-------------"
puts "starting from 1 1"
def fibonacii(data)
  newnum = data[1]+data[0]
  puts newnum
  if data[2]>100
    return
  else
    return fibonacii([data[1],newnum,data[2]+1])
  end
  return [data[1],newnum]
end
fibonacii([1,1,0])
puts "enter your own number to start from"
fib =gets.to_i
fibonacii([fib,fib,0])
