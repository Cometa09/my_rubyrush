$a = 1
b = 2

def method
    c = 3

    puts "Глобальная переменная а: #{defined?($a)}"
    puts "Локальная переменная b: #{defined?(b)}"
    puts "Внутри метода переменная c: #{defined?(c)}"
end

method

puts
puts "Глобальная переменная а: #{defined?($a)}"
puts "Локальная переменная b: #{defined?(b)}"
puts "Внутри метода переменная c: #{defined?(c)}"