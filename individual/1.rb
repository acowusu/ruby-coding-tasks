
puts "1a-------------"
def timestable(n)
  for i in 1..12
    puts n*i
  end
end

timestable(3)
puts "1b-------------"
for j in 1..12
  timestable(j)
  puts
end
puts "1c-------------"
puts "Write your number: "
timestable(gets.to_i)
