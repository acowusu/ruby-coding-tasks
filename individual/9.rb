puts "9-------------"
def addArray(a,b)
  return a+b
end
def alternateArray(a,b)
  result = Array.new
  for i in 0..a.length-1
    result.push(a[i])
    result.push(b[i])
  end
  return result
end
puts "add array"
puts addArray([1,2,3,4],[5,6,7,8])
puts "alternate array"
puts alternateArray([1, 2, 3],["a", "b", "c"])
puts "sort array then add"
puts addArray([2,1,6].sort,[100,40,500].sort)
puts "add array then sort"
puts addArray([2,1,6],[100,40,500]).sort
gets
