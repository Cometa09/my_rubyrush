require_relative 'parent'
require_relative 'child'


parent = Parent.new('Василий Игоревич')
masha = Child.new('Masha')
kolya = Child.new('Kolya')

puts "#{parent.name} послушный: #{parent.obedient}"
puts "#{masha.name} послушная: #{masha.obedient}"
puts "#{kolya.name} послушный: #{kolya.obedient}"
