require 'rexml/document'

require_relative 'product'
require_relative 'book'
require_relative 'movie'
require_relative 'disk'

total_price = 0

products = Product.read_from_xml('data/products.xml')

choice = nil

while choice !='x'
  Product.showcase(products)

  choice = STDIN.gets.chomp

  if choice !='x' && choice.to_i < products.size && choice.to_i >= 0
    product = products[choice.to_i]
    total_price += product.buy
  end
end

puts "Спасибо за покупкиz, с вас #{total_price}  руб."
