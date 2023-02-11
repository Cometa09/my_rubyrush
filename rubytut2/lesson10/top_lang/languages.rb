# sort json by top value
require 'json'

file = File.read('languages.json', encoding: 'UTF-8')
full_list = JSON.parse(file)

hash = []

full_list.each do |key, index|
  hash << { lang: key, number: index }
end

sort_list = hash.sort_by { |number| number.max }
top_list = sort_list.reverse
top = top_list.first
puts "----------------------"
puts "Самый популярный язык: #{top[:lang]} (#{top[:number]})"
puts "----------------------"

puts top_list
