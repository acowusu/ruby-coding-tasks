puts "8-------------"
puts "enter diffculty either easy medium  hard or impossible"
def start_game(diff)
  if diff == "easy"
    number = rand(1..50)
  elsif diff == "medium"
    number = rand(1..500)
  elsif diff =="hard"
    number = rand(1..1000)
  else
    number = rand(1..100000)
  end
  game(number, gets.to_i, Array.new)
end
def game(number, testing, tries)
  alreadyTried = FALSE
  if number == testing
    puts "well done you found it\n\ryou've had " + (tries.length.to_s) +" tries"
    return
  elsif number < testing
    puts "try going lower"
  else
    puts "try going higher"
  end
  for i in 0..tries.length-1
    if tries[i] ==testing
      alreadyTried  = TRUE
    end
  end

  if alreadyTried
    puts "you have tried that already"
  else
    tries.push(testing)
    print "you've had "
    print tries.length
    puts "tries"
  end
  game(number, gets.to_i, tries)
end
#start_game(gets.chomp)
gets
