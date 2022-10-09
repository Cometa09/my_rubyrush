
def cls
    system "clear" or system "cls"
end

def get_letters
    slovo = ARGV[0]
    if  slovo == nil
        abort "Введите слово при запуске для начала игры!"
    end

    return slovo.encode("UTF-8").split("")
end


def get_user_input
    letter = ""

    while letter == "" do
        letter = STDIN.gets.encode("UTF-8").chomp
    end  

    return letter
end


def check_input (user_input, letters, good_letters, bad_letters)

    # Если введеная буква есть в "хорошем" и "плохом" массивах
    if good_letters.include?(user_input) || bad_letters.include?(user_input)
        return 0
    end


    if letters.include? (user_input) ||

        (user_input == "е" && letters.include?("ё")) ||
        (user_input == "ё" && letters.include?("е")) ||
        (user_input == "и" && letters.include?("й")) ||
        (user_input == "й" && letters.include?("и"))
       
        good_letters << user_input

        if user_input == "е"
            good_letters << "ё"
        end

        if user_input == "ё"
            good_letters << "е"
        end

        if user_input == "и"
            good_letters << "й"
        end

        if user_input == "й"
            good_letters << "и"
        end
 
        if (letters - good_letters).empty?
            return 1
        else
            return 0
        end
    else
        bad_letters << user_input
        return -1
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


def print_status(letters, good_letters, bad_letters, errors)
    # Выведет загаданное слово, отметив прочерками закрытые буквы
    # Покажет кол-во ошибок и уже названные буквы
    # Если набрали >7 ошибок вывести что игра проиграна
    # Если слово отгадано - поздравить с победой
    
    puts "\nСлово: " + get_word_for_print(letters, good_letters)
    puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

    if errors >=7
        puts "Вы проиграли!"
    else
        if (letters - good_letters).empty?
            puts "Ура! Вы выйграли!"
        else 
            puts "У вас осталось попыток: " + (7 - errors).to_s
        end
    end
end