require 'translit'

input = ""

while input == ""
    puts "Введите фразу для транслитерации: "
    input = STDIN.gets.chomp
end

output = Translit.convert(input)
puts output