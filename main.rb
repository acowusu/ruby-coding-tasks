

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
puts "2a-------------"
puts "enter your three numbers"
def highest(numbers)
  numbers = numbers.sort
  return numbers[numbers.length-1]
end
puts highest([gets.to_i,gets.to_i,gets.to_i])
puts "3-------------"

def mean(numbers)
  return numbers.inject(0.0) { |sum, el| sum + el } / numbers.size
end
def median(numbers)
  numbers = numbers.sort
  if  (numbers.length.modulo(2).zero?)
    mid = (numbers.length/2)-1
    lower = numbers[mid]
    upper = numbers[mid+1]
    difference = upper-lower
    median  = lower.to_f+difference.to_f/2
  else
    median  =numbers[(numbers.length/2).ceil]
  end
  return median
end
def mode(numbers)
  # puts "started"
  currenthighest = 0
  currentvalue = 0
  tmp =0

  for i in 0..numbers.length
    tmp = 0
    for j in 0..numbers.length
      if numbers[i]==numbers[j]
        tmp+=1
      end
    end
    if tmp >currenthighest
      currentvalue = numbers[i]
      currenthighest = tmp
    end
  end
  return currentvalue
end
def average(numbers)
  puts "3b-------------"
  numbers = numbers.sort
  puts "sorted:"
  puts numbers
  puts "3c-------------"
  puts "mean"
  puts mean(numbers)
  puts "mode"
  puts mode(numbers)
  puts "median"
  puts median(numbers)
end
average([gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i])

puts "4-------------"
puts "days of the week"
dow = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
puts dow
puts "and reversed ... "
puts dow.reverse

puts "5-------------"
def even(test)
  return (test.modulo(2).zero?)? TRUE : FALSE
end
puts even(gets.to_i)
puts "6-------------"
def numsbefore(number, odd = FALSE)
  sum = 0
  if odd
    for i in 1..number
      if !(i.modulo(2).zero?)
        sum += i
      end
    end
  else
    for i in 1..number
      sum += i
    end
  end

  return sum
end
print "all munbers before"
puts numsbefore(gets.to_i)
print "odd munbers before"
puts numsbefore(gets.to_i, TRUE)
puts "7-------------"
def mult(a,b)
  sum = 0
  b.times do
    sum+=a
  end
  return sum
end
puts mult(2,4)
puts "8-------------"
#tries  = Array.new

def start_game()
  puts "enter diffculty either easy medium  hard or impossible"
  diff= gets.chomp
  if diff == "easy"
    number = rand(1..50)
    game(number, gets.to_i, Array.new)
  elsif diff == "medium"
    number = rand(1..500)
    game(number, gets.to_i, Array.new)
  elsif diff =="hard"
    number = rand(1..1000)
    game(number, gets.to_i, Array.new)
  else
    number = rand(1..100000)
    game(number, gets.to_i, Array.new)
  end
end
def game(number, testing, tries)
  alreadyTried = FALSE
  if number == testing
    puts "well done you found it "
    print "you've had "
    print tries.length
    puts "tries"
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
#start_game()
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

puts "10-------------"
puts "starting from 1 1"
def fibonacii(data)
  newnum = data[1]+data[0]
  puts newnum
  if data[2]>100
    return
  else
    return fibonacii([data[1],newnum,data[2]+1])
  end
  return [data[1],newnum]
end
fibonacii([1,1,0])
puts "enter your own number to start from"
fib =gets.to_i
fibonacii([fib,fib,0])
puts "11-------------"
def palinodrone(inp)
  for i in 0..(inp.length/2).floor-1
    if inp[i] != inp[(inp.length-1)-i]
      return FALSE
    end
  end
  return TRUE
end
puts palinodrone("aq")
puts "12-------------"
puts "this app checks the number of ech type of charactor\n \renter a string to check"
def charCouunt(str)
  result = [0,0,0,0]
  str.gsub!(/[a-z]/, "l")
  str.gsub!(/[A-Z]/, "u")
  str.gsub!(/[0-9]/, "d")
  for i in 0..str.length-1
    if str[i] == "l"
      result[0] +=1
    elsif str[i] == "u"
      result[1] +=1
    elsif str[i] =="d"
      result[2] +=1
    else
      result[3] +=1
    end
  end
  return result
end
chars = charCouunt(gets.chomp)
print "lowercase: "
puts chars[0]
print "uppercase: "
puts chars[1]
print "numbers: "
puts chars[2]
print "symbols: "
puts chars[3]

puts "13-------------"
def strToArr(str)
  result = [0]
  for i in 0..str.length-1
    #print str[i]
    if str[i] != ","
       result[result.length-1] = str[i].to_i

    else
      result.push("")
    end
  end
  #print result
  return result
end
def consec(arr)
  for i in 0..arr.length
    if arr[i] == arr[i+1].to_i-1 || arr[i] == arr[i+1].to_i-1
      return TRUE
    end
  end
  return FALSE
end
puts "consec(strToArr(1,2,3,4,5))"
puts consec(strToArr("1,2,3,4,5"))
puts "consec(strToArr(gets.chomp)"
puts consec(strToArr(gets.chomp))

puts "b-------------"

def repeated(numbers)
  for i in 0..numbers.length-1
    for j in 0..numbers.length-1
      if numbers[i] == numbers[j] && i!=j
        return TRUE
      end
    end
  end
  return FALSE
end
puts repeated(strToArr(gets.chomp))
puts "14-------------"
def altervowel(str)
  str.gsub!(/[aeiouAEIOU]/, "*")
  return str
end
puts altervowel("alex")
puts "part b "
def shortest(a,b)
  return ( a.length < b.length ) ? a : b
end
print  shortest([1,2,3,4,5],[1,2,3])
puts ""
puts "15-------------"
# 1 rock
# 2 paper
# 3 scisors
# -----------------
# | a 1 1 1 2 2 2 3 3 3
# | b 1 2 3 1 3 2 1 2 3
# | r d b a a b d b r d
# ---------------
# if the same return draw
# -----------------
# | a\   3 1 2 2 3 1
# | b\   2 3 1 3 1 2
# | r\   a a a b b b
# ---------------
puts "lets play rock paper scisors enter \n\r1 for rock \n\r2 for paper\n\r3 for scisors\n\r"
def startRPs(player)

  computer = rand(1..3)
  #computer  = 1
  result = rps(player, computer)
  result.gsub!(/A/, "You win")
  result.gsub!(/B/, "You lose")
  return result
end
def rps(a,b)
  #  puts "you chose" + a.to_s
  #  puts "computer chose"+ b.to_s
  if a == b
    return "draw"
  elsif (a ==3 && b ==2)||(a ==1 && b ==3)||(a == 2 && b ==1)
    return "A"
  else
    return "B"
  end
end
puts startRPs(gets.to_i)
puts "16-------------"
def shuffle(list)
  list.sort_by { rand }
end
print shuffle([1,2,3,4,5])
puts ""
puts "17-------------"
def ceasor(str, places)
  letters = Array('a'..'z')
  result = ""
  for i in 0..str.length-1
    for j in 0..letters.length-1
      if str[i] == letters[j]

        #puts "letters [i +places] is "+( (j+places>25) ? letters[(j+places)-25] : letters[j+places])
        result += (j+places>26)? letters[(j+places)-26] : letters[j+places]
      end
    end
  end
  return result
end
puts ceasor("uryyb", 13)
def rot13(str)
  ceasor(str, 13)
end
ceasor(gets.chomp, gets.to_i)
puts "18-------------"
puts "dice :"
def doDice(range, number)
  result = []
  number.times do
    result.push(rand(1..range))
  end
  return result
end
print"enter the number of faces on the dice"
dicerange = gets.to_i
print "enter the number of dice you want to roll"
dicenumber = gets.to_i
puts "roll another"
print"enter the number of faces on the dice"
dicerange1 = gets.to_i
print "enter the number of dice you want to roll"
dicenumber1 = gets.to_i
puts doDice(dicerange1, dicenumber1)
puts doDice(dicerange, dicenumber)

puts "eg 4 faces three rolls"
puts doDice(4, 3)
puts "19-------------"
def deck()
  suits = ["hearts","diamonds", "spades","clubs" ]
  value = Array(2..10)
  value += ["jack", "queen", "king", "ace"]
  result = []
  for i in 0..3
    for j in 0..value.length-1
      result.push(value[j].to_s+" of "+suits[i])
    end
  end
  return result
end
puts deck
puts "20-------------"

puts "pick a drink:  \n\r1 for coke   -30p\n\r2 for pepsi  -50p\n\r3 for apple  -£1.30\n\r4 for orange -70p\n\r5 for soup   -90p"
print "enter a number"
balence = 0
drinkprices = [30, 50, 130, 70, 90,100]
coins  = [100, 50, 20, 10, 5, 2, 1]
drinkchoice = gets.to_i
drinkprice = drinkprices[drinkchoice-1]

puts "coins :1p 2p 5p 10p 20p 50p £1"

def insert_money(inserted)
  #inserted.gsub!(/£1/, "100")
   a = inserted
   a.gsub!(/£1/, "100")
   a.gsub!(/[\D]/, "")
   a=a.to_i
   if (a==1||a==2||a==5||a==10||a==20||a==50||a==100)
     return a.to_i
   end
   return 0
end
while balence<drinkprice
  puts "enter money"
  puts "you curently have" + balence.to_s
  puts "you need to add " + (drinkprice-balence).to_s + "p"
  balence += insert_money(gets.chomp)
end
puts "you sucessfully bought " + drinkchoice.to_s
change = balence - drinkprice
puts "your change is "+ change.to_s
def changeout(change, coins)
  result = ""
  for i in 0..coins.length-1
    if (change/coins[i]).floor !=0
      #print (coins[i].to_s) +"pence pieces :"
      #puts (change/coins[i]).floor
      result +=  (coins[i].to_s) +"pence pieces :"+(change/coins[i]).floor.to_s + "\n\r"
    end
    # print (coins[i].to_s) +"s"
    # puts (change/coins[i]).floor
    change -= coins[i]*(change/coins[i]).floor
  end
  return result
end
puts changeout(change, coins)
puts "21-------------"
require "date"
def dow(time)
  return time.wday
end
def printdate(date, num)
  result = Date.parse(date) # -> 2015-09-03
  if num
    print result.year
    print result.mon
    print result.day

  elsif !num
  result.strftime('%a %d %b %Y')

  end
end
def makenum(str)
return Date.parse(str)
end

other = Date.new(2018, 12, 16) #=> 2002-10-31 00:00:00 -0500
difference = Date.today-other
print difference.to_i
puts""
puts "enter a date"
puts "the weekday is "
puts Date.parse("10-1-17").strftime("%A")
puts makenum("20170717").strftime("%d of %B, %Y")
puts Date.gregorian_leap?(2007)
puts Date.today.wday
puts "22-------------"

puts File.read("sites.txt")
write_handler = File.new("result.out", "w")

# Puts the text in the file
write_handler.puts().to_s
count = charCouunt(File.read("sites.txt"))
write_handler.puts("lowercase:" + count[0].to_s).to_s
write_handler.puts("uppercase :" + count[1].to_s).to_s
write_handler.puts("numbers  :" + count[2].to_s).to_s
write_handler.puts("symbols  :" + count[3].to_s).to_s

# Closes the file
write_handler.close

def occurences(file)
  # puts "started"
  numbers  = File.read(file).to_s
  numbers = numbers.chars.sort.join
  puts numbers
  write_handler = File.new(file+"_result.out", "w")

  currentvalue = 0
  tmp =0

  for i in 0..numbers.length
    tmp = 0
    for j in 0..numbers.length
      if numbers[i]==numbers[j]
        tmp+=1
      end
    end
    if numbers[i]!= numbers[i+1]
      write_handler.puts ((numbers[i].to_s) +":"+tmp.to_s).to_s
    end

  end
  return currentvalue
end
occurences("sites.txt")
puts "23-------------"
