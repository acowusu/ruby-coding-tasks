#20-------------           # 
puts "20-------------"           # 
puts " welcome to the vending machine "           # 
puts "pick a drink:  \n\r1 for coke   -30p\n\r2 for pepsi  -50p\n\r3 for apple  -£1.30\n\r4 for orange -70p\n\r5 for soup   -90p"           # 
print "enter a number"           # 
balence = 0           # they stary with no money
drinkprices = [30, 50, 130, 70, 90,0]           # the rring pries are as shown - the trailing 0 is if they just press enger as in that case they will nit be charged
coins  = [100, 50, 20, 10, 5, 2, 1]           # the coins they can use areas shown
drinkchoice = gets.to_i           # theig drink choice is taken in as an interger- if they put a lettter it will be converted to 0
drinkprice = drinkprices[drinkchoice-1]           # the -1 is because the drink prices started from 1 the minus 1 index of the array isthe last element so if chay choose nothing they will not be charged

           # 
puts "coins :1p 2p 5p 10p 20p 50p £1"           # tell them their coins

           # 
def insert_money(inserted)           # define function
  #inserted.gsub!(/£1/, "100")           # if they put £1 we convert it to 100 as the machine works in pence
   a = inserted           # 
   a.gsub!(/£1/, "100")           # 
   a.gsub!(/[\D]/, "")           # replace anything that is not a digit with nothing
   a=a.to_i           # convert it to an interger
   if (a==1||a==2||a==5||a==10||a==20||a==50||a==100)           # if they chose a valid piece of currency
     return a.to_i           # return it
   end           # 
   return 0           # otherwise return 0
end           # 
while balence<drinkprice           # afther they have chosen their dring and are putting moned
  puts "enter money"           #    *money in we keep making them insert money until they have enough to pay for t
  puts "you curently have entered : " + balence.to_s           # say what there balence is
  puts "you need to add " + (drinkprice-balence).to_s + "pence more "           # say how much they need to add
  balence += insert_money(gets.chomp)           # make them put in money and add it to their balence
end           # 
puts "you sucessfully bought " + drinkchoice.to_s           # say what they bought
change = balence - drinkprice           # cheir change is the difference between what they putin and its price
puts "your change is "+ change.to_s           # output the change
def changeout(change, coins)           # 
  result = ""           # 
  for i in 0..coins.length-1           # for each of the coins
    if (change/coins[i]).floor !=0           # if it cannod be divided equally by that coin
      #print (coins[i].to_s) +"pence pieces :"           # 
      #puts (change/coins[i]).floor           # 
      result +=  (coins[i].to_s) +"pence pieces :"+(change/coins[i]).floor.to_s + "\n\r"           # say the number and the value of each pece of change they get
    end           # 
    # print (coins[i].to_s) +"s"           # 
    # puts (change/coins[i]).floor           # 
    change -= coins[i]*(change/coins[i]).floor           # decreace the change before bnext lop
  end           # 
  return result           # eturn the rewsult
end           # 
puts changeout(change, coins)           # outpur the amount of change the user gets to the user
