puts "Введите число N: "
num = gets.to_i

sum = 1
i = 1

while i < num
    puts i
    i +=1
    sum = sum + i
end

puts sum