current_path = File.dirname(__FILE__)
questions_path = current_path + "/data/questions.txt"
answers_path = current_path + "/data/answers.txt"


if File.exist?(questions_path)
    questions = File.new(questions_path, "r:UTF-8")
    questions_lines = questions.readlines.map(&:chomp)
    questions.close
    #puts questions_lines
end


if File.exist?(answers_path)
    answers = File.new(answers_path, "r:UTF-8")
    answers_lines = answers.readlines.map(&:chomp)
    answers.close
    #puts answers_lines
end

puts "Ответьте на вопросы викторины!"

correct_answers = 0

index = 0

while questions_lines.size > index
        puts questions_lines[index]

        user_answer = STDIN.gets.chomp
        if user_answer == answers_lines[index]
            puts "Вы ответили правильно!"
            correct_answers += 1
            sleep 0.4
        else 
            puts "Неверно!"
            puts "Правильный ответ: #{answers_lines[index]}"
            sleep 0.5
        end

    index +=1

end

puts
puts "Количество правильных ответов: #{correct_answers}"
