#view mendeleev table
require 'json'

file = File.read('elements.json', encoding: 'UTF-8')
full_table = JSON.parse(file)

puts "Всего элементов у нас: #{full_table.size}"
puts full_table.keys.join(', ')

puts "О каком элементе хотите узнать?"

element = gets.chomp

if full_table.has_key?(element)
  puts "Первооткрывателем этого элемента считается: #{full_table[element]}"
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end
