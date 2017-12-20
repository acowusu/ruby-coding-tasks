#24-------------
puts "welcome to the birthday reminder app"
require "date"
require 'csv'
def addbirthday(name, date)
    CSV.open("../birthdays.csv", "a") do |csv|
        csv << [name, date]
    end
end
def birthdaystoday
  isonetoday = false
  CSV.foreach('birthdays.csv') do |row|
    if Date.parse(row[1]).strftime('%d %b') == Date.today.strftime('%d %b')
      puts row[0] + "'s birthday is today"
      isonetoday = true
    end
  end
  if !isonetoday
    puts "nobody has a birthday today :("
  end
end
def getbirthdays
  CSV.foreach('birthdays.csv') do |row|
  puts row[0] + "'s birthday is "+ Date.parse(row[1]).strftime('%d %b ')
  end
end
def birthdaymenu
  puts "enter \n\r1 to view all birthdays \n\r2 to view all birthdays today\n\r3 to add a birthday "
  option = gets.to_i
  if option == 1
    getbirthdays
  elsif option == 2
    birthdaystoday
  elsif option == 3
    print " enter the name of the person you would like to add"
    name = gets.chomp
    print "enter the date of birth of the person"
    date  = gets.chomp
    addbirthday(name, Date.parse(date))
  end
end
birthdaymenu
