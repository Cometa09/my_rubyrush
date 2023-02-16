# Программа «Прогноз погоды в городах»
#
require "net/http"
require "rexml/document"
require_relative 'lib/meteoservice_forecast'


CITIES = {
  37 => 'Москва',
  69 => 'Санкт-Петербург',
  99 => 'Новосибирск',
  59 => 'Пермь',
  115 => 'Орел',
  121 => 'Чита',
  141 => 'Братск',
  199 => 'Краснодар'
}.invert.freeze

city_names = CITIES.keys

puts "Для какого города Вы хотите узнать погоду?"
city_names.each_with_index { |name, index|
  puts "#{index + 1}: #{name}"
}

city_index = gets.to_i
unless city_index.between?(1, city_names.size)
  puts "Введите число от 1 до #{city_names.size}"
  city_index = gets.to_i
end

city_id = CITIES[city_names[city_index-1]]

URL = "https://xml.meteoservice.ru/export/gismeteo/point/#{city_id}.xml"
response = Net::HTTP.get_response(URI.parse(URL))
doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form_component(doc.root.elements['REPORT/TOWN'].attributes['sname'])
forecast = doc.root.elements['REPORT/TOWN'].elements.to_a

puts "------------------------"
puts city_name

forecast.each do |scope|
  puts Weather.parse(scope)
  puts
end