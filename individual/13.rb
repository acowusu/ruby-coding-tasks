#13-------------
puts "13-------------"
def strToArr(str)
  result = [0]
  for i in 0..str.length-1
    #print str[i]
    if str[i] != ","
       result[result.length-1] = str[i].to_i

    else
      result.push("")
    end
  end
  #print result
  return result
end
def consec(arr)
  for i in 0..arr.length
    if arr[i] == arr[i+1].to_i-1 || arr[i] == arr[i-1].to_i-1
      return TRUE
    end
  end
  return FALSE
end
puts "the numbers 1,2,3,4,5 are consecutive"
puts consec(strToArr("1,2,3,4,5"))
puts "check your own set of numbers using a comma separated list"
puts consec(strToArr(gets.chomp))

puts "b-------------"

def repeated(numbers)
  for i in 0..numbers.length-1
    for j in 0..numbers.length-1
      if numbers[i] == numbers[j] && i!=j
        return TRUE
      end
    end
  end
  return FALSE
end
puts repeated(strToArr(gets.chomp))
