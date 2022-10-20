require_relative 'calc_class'

calc = Calc.new

puts "Введите первое число:"
a = STDIN.gets.chomp.to_i
    
puts "Введите второе число:"
b = STDIN.gets.chomp.to_i

operation = ""
while operation !="+" && operation !="-" && operation !="*" && operation !="/"
    puts "Выберите операцию (+ - * /):"
    operation = STDIN.gets.chomp
end

case operation
when "+"
    puts "Результат: #{calc.sum(a,b)}"

when "-"
    puts "Результат: #{calc.subtraction(a,b)}"

when "*"
    puts "Результат: #{calc.multimlication(a,b)}"

when "/"
    begin
        puts "Результат: #{calc.devision(a,b)}"
    rescue ZeroDivisionError => error
        puts "Ошибка! Деление на 0 запрещено! " + error.message
    end
end













