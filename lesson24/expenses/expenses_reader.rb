require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
file_name = current_path + '/expenses.xml'

abort 'File expenses.xml не найден' unless File.exist?(file_name)

file = File.new(file_name)

doc = REXML::Document.new(file)

amount_by_date = Hash.new

doc.elements.each('expenses/expense') do |item|
  loss_sum = item.attributes['amount'].to_i
  loss_date = Date.parse(item.attributes['date'])
  amount_by_date[loss_date] ||= 0
  amount_by_date[loss_date] += loss_sum
end

file.close

sum_by_month = Hash.new

amount_by_date.keys.sort.each do |key|
  sum_by_month[key.strftime("%B %Y")] ||= 0
  sum_by_month[key.strftime("%B %Y")] += amount_by_date[key]
end

current_month = amount_by_date.keys.sort[0].strftime("%B %Y")
puts "-----[#{current_month}], всего потрачено: #{sum_by_month[current_month]} р.]--------"

amount_by_date.keys.sort.each do |key|
  if key.strftime("%B %Y") != current_month
    current_month = key.strftime("%B %Y")
    puts "-----[#{current_month}, всего потрачено: #{sum_by_month[current_month]} р.]------"
  end

  puts "\t#{key.day}: #{amount_by_date[key]} р."
end

puts "--------------"
puts amount_by_date
