require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

products << leon = Movie.new(
  movie_name: 'Leon', year: 1994, producer: "реж. Люк Бессон", price: 990, amount: 4
)

products << fool = Movie.new(
  movie_name: 'Дурак', year: 2014, producer: 'реж. Юрий Быков', price: 390, amount: 1
)

products << idiot = Book.new(
        book_name: 'Идиот',
        genre: 'роман',
        author: 'Федор Достоевский',
        price: 1500,
        amount: 10
)
idiot.price = 3000
idiot.amount = 1
leon.year = 1999
leon.price = 999
fool.update(year: 2010, price: 500)

puts 'Список всех продуктов:'
products.each { |product| puts product }
