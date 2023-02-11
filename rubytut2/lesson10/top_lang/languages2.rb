# sort json by top value
require 'json'

file = File.read('languages.json', encoding: 'UTF-8')
full_list = JSON.parse(file)

full_list_invert = full_list.invert

sorted = full_list_invert.sort.reverse

most_popular = sorted.first

puts "----------------------"
puts "Самый популярный язык: #{most_popular.last} (#{most_popular.first})"
puts "----------------------"


sorted.each_with_index do |language, index|
  puts "#{index + 1}: #{language.first} (#{language.last})"
end