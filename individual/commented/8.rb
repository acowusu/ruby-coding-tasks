puts "8-------------"           # 
puts "enter diffculty either easy medium  hard or impossible"           # displays message
def start_game(diff)           # defines the start gane function
  if diff == "easy"           #  if the user has entered easy
    number = rand(1..50)           # the range we want is 50
  elsif diff == "medium"           # otherwise if they entered medium
    number = rand(1..500)           # the range we want is 500
  elsif diff =="hard"           # does the same but for hard
    number = rand(1..1000)           # 
  else           # otheerwise they must want extreme
    number = rand(1..100000)           # 
  end           # 
  game(number, gets.to_i, Array.new)           # nub we gall the game function calling in the random number they are aiming for their choice and an empty array of their privious tries
end           # 
def game(number, testing, tries)           # define game funcion
  alreadyTried = FALSE           #  
  if number == testing           # if they guessed correctly then
    puts "well done you found it\n\ryou've had " + (tries.length.to_s) +" tries"           # say as mush
    return           # exit out of function
  elsif number < testing           # otherwise
    puts "try going lower"           # say to go low if they were too high
  else           # 
    puts "try going higher"           # or say to go higher if they weere to low
  end           # 
  for i in 0..tries.length-1           # for eath of their tries
    if tries[i] ==testing           #   if their number is the same as one they have had before
      alreadyTried  = TRUE           #  store that fact in a variale
    end           # endif statment
  end           # end dor

           # 
  if alreadyTried           # if they have already tried a number
    puts "you have tried that already"           # tell the user as much
  else           # otherwise
    tries.push(testing)           # add the number they tried to the list of numbers
    print "you've had "           #  tell the user
    print tries.length           #  how many tries they have had
    puts "tries"           #       list the 
  end           # end else
  game(number, gets.to_i, tries)           # run game
end           # end function
#start_game(gets.chomp)           # 
gets           # 
