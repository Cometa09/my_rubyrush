puts "Введите число!"
num = gets.chomp.to_i

if (num.abs % 2) == 0
    puts "Число четное!"
else 
    puts "Число НЕчетное!"
end