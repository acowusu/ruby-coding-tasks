#21-------------
puts "21-------------"
require "time_difference"
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
def nexp(target)
  date  = Date.today.wday
  date = (date ==0)? 7: date
  return (date) - target
end

start_time = Time.new(2013,1)
end_time = Time.new(2014,1)

puts "the time difference between " + (start_time.to_s) + " and " + (end_time.to_s) + " is "

puts TimeDifference.between(start_time, end_time).humanize

puts""
puts "enter a date"
puts "the day of the week for that date  is "
puts Date.parse("10-1-17").strftime("%A")
puts "20170717 ad a pretty date is :"
puts makenum("20170717").strftime("%d of %B, %Y")
puts "is 2007 a leap year"
puts Date.gregorian_leap?(2007)
puts "the current weekday is"
puts Date.today.wday
puts "next nearest friday is"
puts (nexp(5)>0)? nexp(5) : nexp(5)*(-1)
#puts nexp(5)
puts "days till next monday is"
puts (nexp(1)>0)? nexp(8)*-1 : nexp(8)
