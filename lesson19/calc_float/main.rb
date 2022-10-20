puts "Введите первое число: "
a = STDIN.gets.to_f

puts "Введите второе число: "
b = STDIN.gets.to_f

op = ""
while op != "+" && op != "-" && op != "*" && op != "/"
    puts "Выберите операцию (+ - * /):"
    op = STDIN.gets.chomp
end

case op
when "+"
    puts "Результат: #{a + b}"
when "-"
    puts "Результат: #{a - b}"
when "*"
    puts "Результат: #{a * b}"
when "/"
    puts "Результат: #{a / b}"
end
