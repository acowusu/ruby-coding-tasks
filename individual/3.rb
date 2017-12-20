puts "3-------------"

def mean(numbers)
  return numbers.inject(0.0) { |sum, el| sum + el } / numbers.size
end
def median(numbers)
  numbers = numbers.sort
  if  (numbers.length.modulo(2).zero?)
    mid = (numbers.length/2)-1
    lower = numbers[mid]
    upper = numbers[mid+1]
    difference = upper-lower
    median  = lower.to_f+difference.to_f/2
  else
    median  =numbers[(numbers.length/2).ceil]
  end
  return median
end
def mode(numbers)
  frequency = Hash.new(0)
  numbers.each { |e| frequency[e] +=1  }
  sortbyfrequency = frequency.sort_by { |a, b| b }
  return equalfreq(sortbyfrequency)
end
def equalfreq(arr)
  highest  = arr[-1][1]
  result = []
  arr.each do |a,b|
    if b == highest
      result.push(a)
    end
  end
  return result
end
def average(numbers)
  puts "3b-------------"
  numbers = numbers.sort
  puts "sorted:"
  puts numbers
  puts "3c-------------"
  puts "mean"
  puts mean(numbers)
  puts "mode"
  puts mode(numbers)
  puts "median"
  puts median(numbers)
end
puts "enter 5 numbers and  will find the average of them"
average([gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i])
