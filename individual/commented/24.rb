#24-------------           #
puts "welcome to the birthday reminder app"           #
require "date"           # needs daye library
require 'csv'           # needs csv library

def addbirthday(name, date)           # defines function for adding item to the list of birthdays
    CSV.open("../birthdays.csv", "a") do |csv|           # opend file
        csv << [name, date]           # add name and date to csv file
    end           # end
end           #
def birthdaystoday           # lists all birthdays today
  isonetoday = false           # we expect it to be false
  CSV.foreach('birthdays.csv') do |row|           # for each record
    if Date.parse(row[1]).strftime('%d %b') == Date.today.strftime('%d %b')           # if the date is the current date
      puts row[0] + "'s birthday is today"           # say asmuch
      isonetoday = true           # and make it ad being a daybwhere there are birthdays
    end           #
  end           #
  if !isonetoday           # ig noone has a birthday today
    puts "nobody has a birthday today :("           # say as much
  end           #
end           #
def getbirthdays           # lists all birthdays
  CSV.foreach('birthdays.csv') do |row|           # for each of the records
  puts row[0] + "'s birthday is "+ Date.parse(row[1]).strftime('%d %b ')           # list it
  end           #
end           #
def birthdaymenu           #
  puts "enter \n\r1 to view all birthdays \n\r2 to view all birthdays today\n\r3 to add a birthday "           #
  option = gets.to_i           # gets option from user
  if option == 1           # i
    getbirthdays           #
  elsif option == 2           #
    birthdaystoday           #
  elsif option == 3           #
    print " enter the name of the person you would like to add"           #
    name = gets.chomp           #
    print "enter the date of birth of the person"           #
    date  = gets.chomp           #
    addbirthday(name, Date.parse(date))           #
  end           #
end           #
birthdaymenu           #
