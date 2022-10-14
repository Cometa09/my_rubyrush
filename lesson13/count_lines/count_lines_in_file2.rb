file_name = ARGV[0]

    if file_name == nil
        abort "Введите название файла при запуске!"
    end

current_path = File.dirname(__FILE__)
file_path = current_path + "/data/" + file_name

if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    # прочитать файл и убрать символ новой строки
    lines = f.readlines.map(&:chomp)
    f.close

    puts "Открыли файл: " + file_name

    last_five_lines = []
    empty_lines = 0

    lines.each_with_index do |line, index|
        if line == ""
            empty_lines += 1
        end

        if lines.size - index <=5
            last_five_lines << line
        end
    end

    puts "_______________"
    puts "Всего строк: #{lines.length.to_s}"
    puts "Кол-во пустых строк: " + empty_lines.to_s

    puts "Последние 5 строк файла: "
    puts "_______________"
    for line in last_five_lines
        puts line
    end
    
else
    puts "File not found"
end