require_relative "game"
require_relative "result_printer"
require_relative 'word_reader.rb'

printer = ResultPrinter.new
reader = WordReader.new

puts "Игра виселица. Версия v3"
sleep 0.5

words_file_name = File.dirname(__FILE__) + '/data/words.txt'
slovo = reader.read_from_file(words_file_name)

game = Game.new(slovo)

while game.status == 0 do
    printer.print_status(game)
    game.ask_next_letter
end

printer.print_status(game)