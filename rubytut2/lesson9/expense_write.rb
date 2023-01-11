# Пишем программу для записи расходов

require "rexml/document"
require "date"

puts "На что потратить деньги?"
expense_text = STDIN.gets.chomp

puts "Сколько потратили?"
expense_amount = STDIN.gets.chomp.to_i

puts "Укажите дату в формате ДД.ММ.ГГГГ"
date_input = STDIN.gets.chomp

expense_date = nil

if date_input == ''
  expense_date = Date.today
else
  begin
    expense_date = Date.parse(date_input)
  rescue ArgumentError
    expense_date = Date.today
  end
end

puts "В какую категорию занести трату"
expense_category = STDIN.gets.chomp

current_path = File.dirname(__FILE__)
file_name = current_path + "/my_expenses.xml"

file = File.new(file_name, "r:UTF-8")
doc = nil

begin
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "XML файл битый"
  abort e.message
end

file.close

expenses = doc.elements.find('expenses').first

expense = expenses.add_element 'expense', {
    'amount' => expense_amount,
    'category' => expense_category,
    'date' => expense_date.strftime('%Y.%m.%d')
}

expense.text = expense_text

file = File.new(file_name, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Информация успешно сохранена"
