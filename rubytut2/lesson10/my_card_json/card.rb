require 'json'

file = File.read('person.json', encoding: "UTF-8")
card = JSON.parse(file)

puts "#{card["person"]["first_name"]} #{card["person"]["second_name"]}"
puts "#{card["person"]["phone"]}"
puts "#{card["person"]["mail"]}"
puts "#{card["person"]["info"]}"

