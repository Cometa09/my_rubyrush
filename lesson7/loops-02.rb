array = []

puts "Задайте длину массива: "
length = gets.to_i

i = 0
while i < length do
    array << rand(0..100)
    i += 1
end

puts "_______________"
p array

max_num = 0
for elem in array do
    if max_num < elem
       max_num = elem
    else
       # puts "меньше"
    end
end

puts "Максимум в массиве: #{max_num}"
puts "______________"

# or
max2 = array.sort.max
puts "Максимум в массиве: #{max2}"
