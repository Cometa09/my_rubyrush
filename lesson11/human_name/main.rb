require_relative 'human'

n1 = Human.new("Гаврила", "Петрович", "35")
n2 = Human.new("Фёдор", "Петрович", "65")
n3 = Human.new("Василий", "Алибабаевич", "59")

puts "#{n1.full_name} #{n1.age}"

puts "#{n2.full_name} #{n2.age}"

puts "#{n3.full_name} #{n3.age}"