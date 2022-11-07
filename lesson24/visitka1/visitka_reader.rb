require 'rexml/document'

current_path = File.dirname(__FILE__)
file_name = current_path + '/visitka.xml'

abort 'File expenses.xml не найден' unless File.exist?(file_name)

file = File.new(file_name)

doc = REXML::Document.new(file)


visitka = []

id = 1
doc.elements.each('visitka/desc') do |item|

  visitka << id
  visitka << item.attributes['name']
  visitka << item.attribute('phone')
  visitka << item.attribute('email')
  id +=1
  
end

file.close

puts visitka
