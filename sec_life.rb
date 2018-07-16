puts "Task two: how many seconds in my life?"
puts 'How old are you?'
YEAR = 365 #number of days in a year
OLD = gets.to_i #number of lived years
DAY = 24 #number of hours in a day
HOUR = 60 #number of minute in a hour
MIN = 60 #number of second in a minute
V_DAYS = OLD/4 # a leap year
puts 'The answer is:'
p ((YEAR * OLD) + V_DAYS) * DAY * HOUR * MIN    