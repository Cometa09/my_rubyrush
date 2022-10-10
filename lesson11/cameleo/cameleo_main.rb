require_relative 'cameleo'

cam1 = Cameleo.new

puts "Какой будет фон?"
color = gets.chomp
cam1.change_color(color)

cam1.change_color('yellow')
cam1.change_color('blue')