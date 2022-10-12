require_relative "film"
require_relative "human"

n1 = Human.new("Гаврила", "Петрович", "35")
n2 = Human.new("Фёдор", "Петрович", "65")
n3 = Human.new("Василий", "Алибабаевич", "59")

n1.film = Film.new("123", "Спилберг")
n2.film = Film.new("456", "Спилберг")
n3.film = Film.new("789", "Спилберг")

puts "#{n1.full_name}с любимым фильмом: #{n1.film.film_name}"
puts "#{n2.full_name}с любимым фильмом: #{n2.film.film_name}"
puts "#{n3.full_name}с любимым фильмом: #{n3.film.film_name}"