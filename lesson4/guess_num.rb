number = rand(0..16)
puts "Загадано число от 0 до 16, отгадай какое!"

i=0
for i in (1..3)
    input = gets.to_i
        if input == number
            puts "Вы угадали!!!"
            puts "Загаданное число #{number}!"
            exit 0
        elsif input > number
            puts "Нужно меньше!"
        else input < number
            puts "Нужно больше!"
        end
    i =+1
end

puts "Вы не угадали! Число было #{number}!"