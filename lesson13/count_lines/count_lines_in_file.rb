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

    all_lines = []
    empty_lines = 0

    for line in lines
        if line.nil? || line.empty?
            empty_lines += 1
        end
    
        all_lines << line
    end

  
    puts "Пустых строк: #{empty_lines}"
    puts "Всего строк: #{all_lines.size}"

    puts all_lines[all_lines.size - 5]
    puts all_lines[all_lines.size - 4]
    puts all_lines[all_lines.size - 3]
    puts all_lines[all_lines.size - 2]
    puts all_lines[all_lines.size - 1]

    end
else
    puts "File not found"
end