varible = 1

class Scope
    def initialize
        @varible = 2
    end

    def check_variables
        puts "Переменная класса: #{defined?(@varible)} "
        puts "Локальная переменная: #{defined?(varible)} "
    end
end

scope = Scope.new
scope.check_variables

puts

puts "Переменная класса: #{defined?(@varible)} "
puts "Локальная переменная: #{defined?(varible)} "