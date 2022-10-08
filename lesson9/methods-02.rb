require "time"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def array_cut(array, elem)
    return array.take(elem)
end


def array_cut2(array, elem2)
    
    new_arr = []
    i = 0
    
    if elem2 > array.length
        puts "Error, в массиве нет столько элементов!"
        exit 0
    end

    while i < elem2 do
        new_arr << array[i]
        i += 1
    end
    return new_arr
    puts "ok"
end

# First method
puts "Сколько элементов оставить?"
elem = gets.to_i
p array_cut(array, elem)


# Second method
puts "Сколько элементов оставить?"
elem2 = gets.to_i
p array_cut2(array, elem2)