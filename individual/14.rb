#14-------------
puts "14-------------"
puts "replace all vowels with *\n\r Alex would become ..."
def altervowel(str)
  str.gsub!(/[aeiouAEIOU]/, "*")
  return str
end
puts altervowel("alex")
puts "part b  which is shorter [1,2,3,4,5],[1,2,3] \n\r it turns out that"
def shortest(a,b)
  return ( a.length < b.length ) ? a : b
end
print  shortest([1,2,3,4,5],[1,2,3])
puts " is shorter"
