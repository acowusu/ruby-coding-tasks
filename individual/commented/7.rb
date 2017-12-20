puts "7-------------"           # 
def mult(a,b)           # defines function
  sum = 0           # before we have done nothing we have nothing
  b.times do           # 
    sum+=a           # Ask Question
  end           # 
  return sum           # swince multiplication is just repeated adding that is what we do
end           # 
puts "2 times 4 is :" + mult(2,4).to_s           # prettyprints ressult
