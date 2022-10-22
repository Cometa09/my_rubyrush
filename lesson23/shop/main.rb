require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

leon = Movie.new(price: 290, amount: 4)
puts "Фильм  Леон стоит: #{leon.price} руб."
puts "Осталось: #{leon.amount} шт." 
