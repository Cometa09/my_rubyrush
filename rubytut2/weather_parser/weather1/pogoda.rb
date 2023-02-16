# Программа «Прогноз погоды»
#
require "net/http"
require "uri"
require "rexml/document"

# создаем объект-адрес где лежит погода Москвы в иде XML
uri = URI.parse("https://xml.meteoservice.ru/export/gismeteo/point/69.xml")
res = Net::HTTP.get_response(uri)

# CLOUDINESS - облачность по градациям: 
# -1 - туман, 0 - ясно, 1 - малооблачно, 2 - облачно, 3 - пасмурно
CLOUDINESS = %w(ясно малооблачно облачно пасмурно).freeze
# %w(foo bar) is a shortcut for ["foo", "bar"]

# парсим полученный XML
doc = REXML::Document.new(res.body)

# собираем параметры
city_name = URI.decode_www_form_component(doc.root.elements['REPORT/TOWN'].attributes['sname'])

#forecast1 = doc.root.elements['REPORT/TOWN/FORECAST']
forecast = doc.root.elements['REPORT/TOWN'].elements.to_a[0]

min_temp = forecast.elements['TEMPERATURE'].attributes['min']
max_temp = forecast.elements['TEMPERATURE'].attributes['max']
min_wind = forecast.elements['WIND'].attributes['min']
max_wind = forecast.elements['WIND'].attributes['max']

cloud_index = forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i
clouds = CLOUDINESS[cloud_index]

time = Time.now
puts "------------------------------------------------"
puts "Сейчас #{time}" 
puts "Погода в городе #{city_name}:"
puts "От #{min_temp} до #{max_temp} градусов, #{clouds}, ветер от #{min_wind} до #{max_wind}м/с"
puts "------------------------------------------------"