require_relative "game"
require_relative "result_printer"


  if (Gem.win_platform? && ARGV[0])
    slovo = slovo.dup
      .force_encoding("IBM866")
      .encode("IBM866", "cp1251")
      .encode("UTF-8")
  end


printer = ResultPrinter.new
puts "Игра виселица. Версия v2"
sleep 0.5

slovo = ARGV[0]
game = Game.new(slovo)

while game.status == 0 do
    printer.print_status(game)
    game.ask_next_letter
end

printer.print_status(game)