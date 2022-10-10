require_relative 'bodybuilder'

first = Bodybuilder.new(0,0,0)
second = Bodybuilder.new(0,0,0)
third = Bodybuilder.new(1,5,3)

5.times do
     first.pump("triceps")
end

3.times do
     first.pump("biceps")
end

8.times do
     first.pump("deltovidka")
end


puts "Первый бодибилдер:"
puts first.show_muscle

puts "Второй бодибилдер:"
puts second.show_muscle

puts "Третий бодибилдер:"
puts third.show_muscle