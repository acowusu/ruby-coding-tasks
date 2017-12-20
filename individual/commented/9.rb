puts "9-------------"           # 
def addArray(a,b)           # defines function
  return a+b           # return an array which is both arrays put together
end           # end function
def alternateArray(a,b)           # define function
  result = Array.new           # define the result as a new empty array
  for i in 0..a.length-1           # for each of th items in the first array
    result.push(a[i])           # add the first item of the array to the result
    result.push(b[i])           # at the first item of the second array to the list
  end           # end
  return result           # return the result
end           # end function
puts "add array"           # output
puts addArray([1,2,3,4],[5,6,7,8])           # show the addition of the array
puts "alternate array"           # output
puts alternateArray([1, 2, 3],["a", "b", "c"])           # show the alternation of two arrays
puts "sort array then add"           # output
puts addArray([2,1,6].sort,[100,40,500].sort)           # show the addition of the two arrays
puts "add array then sort"           # output
puts addArray([2,1,6],[100,40,500]).sort           # 
gets           # wates for user to press enter
