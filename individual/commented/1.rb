
           # 
puts "1a-------------"           # 
def threetimestable()           # defines function 
  for i in 1..12           #  loops 1-12
    puts 3*i           # puts the result of the multiplication
  end           # ends for
end           # ends function
threetimestable()           # defined function
puts "1b-------------"           # 
for j in 1..12           # loops 1-12
  for i in 1..12           # loops 1-12
    puts j*i           #  outputs the result of each times table from one to 12
  end           #         ends function
  puts           #        newline after each times table
end           #           ends outer for loop
puts "1c-------------"           # 
puts "Write your number: "           # just wirtes line
input  = gets.to_i           #         get interger from user
for i in 1..12           #             LOOOPS 	1 to 12
  puts input*i           #            outputs what the user put times i
end           #                       ends for loop
