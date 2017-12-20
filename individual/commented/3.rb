puts "3-------------"           # 

           # 
def mean(numbers)           # 
  return numbers.inject(0.0) { |sum, el| sum + el } / numbers.size           # returns mean which is the sum of all elements over the size (len
end           # ends function
def median(numbers)           # 
  numbers = numbers.sort           # sorts numbers 
  if  (numbers.length.modulo(2).zero?)           # if there is an even amount of numbers
    mid = (numbers.length/2)-1           #         the midpoint is the lenght of the list divided by 2 to get half way then minus onne since it is 0 indexed
    lower = numbers[mid]           # the lower mid is mid
    upper = numbers[mid+1]           #  the upper mid is the value after the mid
    difference = upper-lower           #  the difference between the two midle items
    median  = lower.to_f+difference.to_f/2           # returns the midpoint
  else           # otherwise if there is an odd number of items
    median  =numbers[(numbers.length/2).ceil]           # the median is half the length rounded up to the nearest interger
  end           # 
  return median           # returns the median value
end           # ends function
def mode(numbers)           # 
  # puts "started"           # 
  currenthighest = 0           # 
  currentvalue = 0           # 
  tmp =0           # 

           # 
  for i in 0..numbers.length           # for each of the numbers
    tmp = 0           #  this just holds tempary values of the mode -- we try each number to see if it is the mode
    for j in 0..numbers.length           #  for each number again
      if numbers[i]==numbers[j]           # if the number at the index of the first counter is the same as the number sat the index of the second counter
        tmp+=1           #  there is an occurence of that number so the number of times that number has been seen can be incremented by one
      end           # end the if statement
    end           # end inner for loop
    if tmp >currenthighest           # check to see if the tempary value which is the number of times we saw the previous number is greater than the current highest for all of the numbwe have checked
      currentvalue = numbers[i]           # if it is the current value of the mode is stored
      currenthighest = tmp           #     ... and also the number of times we saw it
    end           #                        end if statment
  end           #                          end outer for
  return currentvalue           #          return the mode
end           #                            end function
def average(numbers)           #        this function puts all of  our different values together
  puts "3b-------------"           # 
  numbers = numbers.sort           # sorts 
  puts "sorted:"           # says as much
  puts numbers           #  writes sorted numbers
  puts "3c-------------"           # 
  puts "mean"           #  outputs to screen
  puts mean(numbers)           # 
  puts "mode"           # 
  puts mode(numbers)           # 
  puts "median"           # 
  puts median(numbers)           # 
end           # ends average function
puts "enter 5 numbers and  will find the average of them"           # 
average([gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i])           # gets the various averaged of 5 numbers
