#20-------------
puts "20-------------"
puts " welcome to the vending machine "
puts "pick a drink:  \n\r1 for coke   -30p\n\r2 for pepsi  -50p\n\r3 for apple  -£1.30\n\r4 for orange -70p\n\r5 for soup   -90p"
print "enter a number"
balence = 0
drinkprices = [30, 50, 130, 70, 90,0]
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
  puts "you curently have entered : " + balence.to_s
  puts "you need to add " + (drinkprice-balence).to_s + "pence more "
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
