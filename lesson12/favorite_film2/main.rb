require_relative "film"

puts "Фильмы какого режиссера Вы хотите посмотреть?"
producer = gets.chomp

films = []

while films.size < 3 
    puts "Введите какой-нибудь его хороший фильм?"
    film_name = gets.chomp
    film = Film.new(film_name, producer)
    films << film_name
end

puts "Сегодня вечером рекомендую посмотреть: #{films.sample}"
puts "Режиссера: #{producer}"