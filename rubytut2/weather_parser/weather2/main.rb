# Программа «Прогноз погоды в СПБ»
#
require "net/http"
require "rexml/document"
require_relative 'lib/meteoservice_forecast'

URL = 'https://xml.meteoservice.ru/export/gismeteo/point/69.xml'.freeze
response = Net::HTTP.get_response(URI.parse(URL))
doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form_component(doc.root.elements['REPORT/TOWN'].attributes['sname'])
forecast = doc.root.elements['REPORT/TOWN'].elements.to_a

puts city_name
puts

forecast.each do |scope|
  puts Weather.parse(scope)
  puts
end