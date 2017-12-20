#13-------------           # 
puts "13-------------"           # 
def strToArr(str)           # define function
  result = [0]           # result starts empty
  for i in 0..str.length-1           # 
    #print str[i]           # 
    if str[i] != ","           # if it is a coma split it there
       result[result.length-1] = str[i].to_i           # 

           # 
    else           # 
      result.push("")           # 
    end           # 
  end           # 
  #print result           # 
  return result           # r
end           # 
def consec(arr)           # define function
  for i in 0..arr.length           # for each item in the array
    if arr[i] == arr[i+1].to_i-1 || arr[i] == arr[i-1].to_i-1           # if it is consecutive
      return TRUE           # say asmuc
    end           # 
  end           # 
  return FALSE           # otherwise return false
end           # 
puts "the numbers 1,2,3,4,5 are consecutive"           # gives a example to the user
puts consec(strToArr("1,2,3,4,5"))           # 
puts "check your own set of numbers using a comma separated list"           # askes the user for input
puts consec(strToArr(gets.chomp))           # 

           # 
puts "b-------------"           # 

           # 
def repeated(numbers)           # defines function
  for i in 0..numbers.length-1           # for each number i the array
    for j in 0..numbers.length-1           # 
      if numbers[i] == numbers[j] && i!=j           # if an item is the same as any other item then numbers are repeated
        return TRUE           # so return true
      end           # 
    end           # otherwise return false
  end           # 
  return FALSE           # 
end           # 
puts repeated(strToArr(gets.chomp))           # gives example to user
