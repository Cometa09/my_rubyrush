puts "Привет, я дневник"
puts "Я сохраню все, до строчки \"end\" в файл"

current_path = File.dirname(__FILE__) + "/pages"

line = nil
all_lines = []

while line != 'end' do
    line = STDIN.gets.chomp
    all_lines << line
end

all_lines.pop

time = Time.now

file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "---------------------------------"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.puts "Time: #{time_string}"
for item in all_lines do
    file.puts(item)
end

file.puts(separator)
file.close

puts "Ваша запись сохранена в файле #{file_name}.txt"
puts "Запись сделана в #{time_string}"
