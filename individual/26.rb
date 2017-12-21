#26-------------
def strToArr(str)
  str += " earwer" # HACK: error resuted in words at the end tot working this fixes it
  result = []
  cache = ""
  for i in 0..str.length-1
    if str[i] == " "
      result.push(cache)
      cache = ""
    else
        cache+=str[i]

    end
  end
  result.push(cache)
  return result
end
def isalpha(str)
  str  = str.downcase
  table = Hash.new
  temp = []
  j = 0
  for i in "a".."z" do
    table[i] = j
    j += 1
  end
  for i in 0..str.length
    temp[i] = table[str[i]]
  end
   temp.pop()
  for i in 1..(temp.length-1)
    if (temp[i].to_i < temp[i-1].to_i)
      return false
    end
  end

  return true
end
def doalpha(arr)
  res = []
  arr.each  do |e|
    if isalpha(e)
      res.push(e)
    end
  end
  puts res.length
  puts res
end
print doalpha(strToArr(File.read("example2.txt").to_s))
