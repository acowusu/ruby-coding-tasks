
puts "1a-------------"
def threetimestable()
  for i in 1..12
    puts 3*i
  end
end
threetimestable()
puts "1b-------------"
for j in 1..12
  for i in 1..12
    puts j*i
  end
  puts
end
puts "1c-------------"
puts "Write your number: "
input  = gets.to_i
for i in 1..12
  puts input*i
end
