require 'time'

print 'Enter your birthday, ex. \'04 19 1995 1 30 00\': '

bday = gets.chomp.split

# creates time object based on input
bday = Time.new(bday[2], bday[0], bday[1], bday[3], bday[4], bday[5])

# divides by minutes, hours, and days
days_old = (Time.now - bday) / 60 / 60 / 24

puts "You are #{days_old} days old."
