#14-------------           # 
puts "14-------------"           # 
puts "replace all vowels with *\n\r Alex would become ..."           # replaces vowels
def altervowel(str)           # defines vowel replaving function
  str.gsub!(/[aeiouAEIOU]/, "*")           # replace any vowel either lowercase or upercase with/*
  return str           # return the result
end           # rnd function
puts altervowel("alex")           # call function
puts "part b  which is shorter [1,2,3,4,5],[1,2,3] \n\r it turns out that"           # 
def shortest(a,b)           # defines function
  return ( a.length < b.length ) ? a : b           # returns the shortest array
end           # 
print  shortest([1,2,3,4,5],[1,2,3])           # inplinments
puts " is shorter"           # 
