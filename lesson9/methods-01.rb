def circle_square(radius)
    return 3.14159265 * radius ** 2
end

puts "Введите площадь круга: "
radius = gets.to_f
puts circle_square(radius).round(3)
