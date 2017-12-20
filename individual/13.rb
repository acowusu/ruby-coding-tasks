#13-------------
puts "13-------------"
def strToArr(str)
  result = []
  cache = ""
  for i in 0..str.length-1
    #print str[i]
    if str[i] != ","
       #result[result.length-1] = str[i].to_i
       cache+= str[i]
    else
      unless cache==""
        result.push(cache.to_i)
        cache = ""
      end
    end
  end
  unless cache==""
    result.push(cache.to_i)
  end
  return result
end
def consec(arr)
  for i in 0..arr.length
    if arr[i] == arr[i+1].to_i-1 || arr[i] == arr[i-1].to_i-1
      return true
    end
  end
  return false
end
puts "the numbers 1,2,3,4,5 are consecutive : #{consec(strToArr("1,2,3,4,5"))}"
puts "check your own set of numbers using a comma separated list"
puts consec(strToArr(gets.chomp))

puts "b-------------"
def repeated(numbers)
  frequency  = Hash.new(0)
  numbers.each { |e| frequency[e] +=1}
  return (frequency.values.select { |e| e>1 }.length>0)
end
puts repeated(strToArr(gets.chomp))
