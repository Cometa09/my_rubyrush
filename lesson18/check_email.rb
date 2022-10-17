puts "Введите почтовый ящик: "

email = STDIN.gets.chomp
reg = '^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$'
#reg = /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i

if email =~ /#{reg}/i
#if email.match(reg)

    puts "Спасибо!" 
else
    puts "Это не email"
end

