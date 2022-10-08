# First method 

def star(num)
    return "*" * num
end

puts "Сколько надо звезд?"
num = gets.to_i
puts star(num)



# Second method

def star2(num2)
    i = 0
    while i <= num2
        puts "*"
        i =+ 1
    end
end

puts "Сколько надо звезд?"
num2 = gets.to_i
puts star(num2)