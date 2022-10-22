require 'date'

class Task < Post

  def initialize
    super

    @due_date = ''
  end

  def read_from_console
    puts 'Что вам необходимо сделать?'
    @text = $stdin.gets.chomp

    puts 'До какого числа нужно это сделать?'
    puts 'Укажите дату в фомате ДД.ММ.ГГГГ, например 13.05.2013'
    input = $stdin.gets.chomp
    @due_date = Date.parse(input)
  end

  def save
    file = File.new(file_path, 'w:UTF-8')
    time_string = @created_at.strftime('%Y.%m.%d %H:%M')
    file.puts(time_string + "\n\r")

    file.puts("Сделать до #{@due_date.strftime('%Y.%m.%d')}")
    file.puts(@text)
    file.close

    puts 'Ваша задача сохранена'
  end
end
