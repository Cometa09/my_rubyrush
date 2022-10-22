require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

products << Movie.new(
  movie_name: 'Leon', year: 1994, producer: "реж. Люк Бессон", price: 990, amount: 4
)

products << Movie.new(
  movie_name: 'Дурак', year: 2014, producer: 'реж. Юрий Быков', price: 390, amount: 1
)

products << Book.new(
        book_name: 'Идиот',
        genre: 'роман',
        author: 'Федор Достоевский',
        price: 1500,
        amount: 10
)

puts 'Список всех продуктов:'
products.each { |product| puts product }
