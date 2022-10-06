cars = ["kia", "audio", "bmw", "Mercedes-Benz",
     "honda", "vaz", "mini-couper"]
puts "Привет! Всего в магазине #{cars.size} машин!"
puts "Выбери свою машину, выбрав номер!"

car_num = gets.chomp.to_i 

if car_num > cars.size || car_num < 0
    puts "Вы ошиблись, такого номер нет!"
else
    puts "Поздравляем! Ваша машина #{cars[car_num]}!"
end