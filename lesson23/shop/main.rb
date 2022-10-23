require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

current_path = File.dirname(__FILE__)
book = Book.from_file(current_path + '/data/books/01.txt')

movie = Movie.from_file(current_path + '/data/films/01.txt')

puts book
movie.update(price: 2999)
puts movie
