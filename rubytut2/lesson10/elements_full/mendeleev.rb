# view mendeleev table

require 'json'

file = File.read('elements.json', encoding: 'UTF-8')
full_table = JSON.parse(file)

puts "Всего элементов у нас: #{full_table.size}"
puts full_table.keys.to_s

puts 'О каком элементе хотите узнать?'

element = gets.chomp

if full_table.has_key?(element)
  puts "Название: #{full_table[element]['name']}"
  puts "Порядковый номер: #{full_table[element]['number']}"
  puts "Первооткрыватель: #{full_table[element]['discoverer']}"
  puts "Год: #{full_table[element]['year']}"
  puts "Плотность: #{full_table[element]['density']} г/см3"
  puts "Атомная масса': #{full_table[element]['atomic_mass']} "
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end
