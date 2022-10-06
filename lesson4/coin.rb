coin = rand(0..1)
resh = rand(0..10)

if resh == 10
    puts "BINGO!!!"
elsif coin == 1
    puts "Выпала решка"
else coin == 0
    puts "Выпал орел"
end