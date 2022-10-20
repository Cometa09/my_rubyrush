require 'digest'

puts "Введите фразу для шифрования: "

input = STDIN.gets.chomp

encrypt = 0
while encrypt !="1" && encrypt !="2"
    puts "Введите метод шифрования: "
    puts "1. MD5"
    puts "2. SHA1"

    encrypt = STDIN.gets.chomp
end

puts "Отлично! Шифруем..."
sleep 0.5
case encrypt
when "1"
    puts Digest::MD5.hexdigest(input)
when "2"
    puts Digest::SHA1.hexdigest(input)
end