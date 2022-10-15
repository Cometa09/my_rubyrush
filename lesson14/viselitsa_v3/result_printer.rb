class ResultPrinter

    def cls
        system "clear"
    end


    def print_status(game)
        cls
        puts "Количество букв в слове: #{game.letters.join.size}"
        puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
        puts "Ошибки: #{game.bad_letters.join(", ").to_s}"
      
        if game.status == -1
          puts "Вы проиграли :("
          puts "Загаданное слово было: " + game.letters.join("")
        elsif game.status == 1
          puts "Поздравляем, вы выиграли!"
        else
          puts "У вас осталось ошибок: " + (7 - game.errors).to_s
        end
    end


    def get_word_for_print(letters, good_letters)
        result = ""

        for item in letters do
            if good_letters.include?(item)
                result += item + " "
            else
                result += "_"
            end  
        end
        return result  
    end

end