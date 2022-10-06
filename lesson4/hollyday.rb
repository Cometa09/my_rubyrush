require 'time'

time = Time.now
week_day = time.wday

if week_day == 0 || week_day == 6
    puts "TODAY IS HOLLYDAY!"
else
    puts "Today is not a day off, back to work!"
end