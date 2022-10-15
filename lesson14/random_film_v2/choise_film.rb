require_relative "film_reader.rb"

reader = FilmReader.new

file_name = File.dirname(__FILE__) + '/data/films.txt'
film = reader.read_from_file(file_name)

puts "Сегодня Вам предлагается к просмотру фильм:"
puts film