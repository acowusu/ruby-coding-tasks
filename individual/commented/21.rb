#21-------------           # 
puts "21-------------"           # 
require "time_difference"           #  libry needed for time calculations
require "date"           #             other lib needed
def dow(time)           #  defines function for days of the week
  return time.wday           # returns the current weekday
end           # ends the function
def printdate(date, num)           # defineds function for printing the date
  result = Date.parse(date) # -> 2015-09-03           # 
  if num           # 
    print result.year           # 
    print result.mon           # 
    print result.day           # if they bjust want the number format give them that
  elsif !num           # 
  result.strftime('%a %d %b %Y')           # othervise format it in a preety way using words
  end           # 
end           # 
def makenum(str)           # this takes in a string and nmajkes it a num
  return Date.parse(str)           # parse the string into date format
end           # and return it
def nexp(target)           # 
  date  = Date.today.wday           # 
  date = (date ==0)? 7: date           # make sunday 7 instead of 0
  return (date) - target           # return the vresult
end           # 

           # 
start_time = Time.new(2013,1)           # give a dummy start time
end_time = Time.new(2014,1)           # and end time

           # 
puts "the time difference between " + (start_time.to_s) + " and " + (end_time.to_s) + " is "           # output the time difference

           # 
puts TimeDifference.between(start_time, end_time).humanize           # 0

           # 
puts""           # make newline
puts "enter a date"           # 
puts "the day of the week for that date  is "           # 
puts Date.parse("10-1-17").strftime("%A")           # find the dow for what the user entered
puts "20170717 ad a pretty date is :"           # 
puts makenum("20170717").strftime("%d of %B, %Y")           # format a date in a pretty way
puts "is 2007 a leap year"           # 
puts Date.gregorian_leap?(2007)           # outputs if a givern year is leap
puts "the current weekday is"           # 
puts Date.today.wday           # output the current weekday
puts "next nearest friday is"           # 
puts (nexp(5)>0)? nexp(5) : nexp(5)*(-1)           # 
#puts nexp(5)           # 
puts "days till next monday is"           # 
puts (nexp(1)>0)? nexp(8)*-1 : nexp(8)           # 
