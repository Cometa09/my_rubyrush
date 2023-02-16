# Программа «Валютный курс»
#
require "net/http"
require "rexml/document"

URL = 'https://www.cbr.ru/scripts/XML_daily.asp'

response = Net::HTTP.get_response(URI.parse(URL))
doc = REXML::Document.new(response.body)

date = doc.root.attributes['Date']
puts "Курс на: #{date}"

valute_list = doc.elements['ValCurs'].to_a

valute_name_dol = valute_list[13].get_text('Name')
valute_curr_dol = valute_list[13].get_text('Value')

valute_name_eur = valute_list[14].get_text('Name')
valute_curr_eur = valute_list[14].get_text('Value')
puts "--------"
puts "#{valute_name_dol}: #{valute_curr_dol} руб."
puts "#{valute_name_eur}: #{valute_curr_eur} руб."
puts "--------"

# Или Поиск по документу
doc.each_element('//Valute[@ID="R01235" or @ID="R01239" or @ID="R01200"]') do |currency_tag|
  name = currency_tag.get_text('Name')
  value = currency_tag.get_text('Value')
 
  puts "#{name}: #{value} руб."
end
puts "--------"