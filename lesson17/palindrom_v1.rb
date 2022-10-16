puts "Введите слово:"
orig_string = gets.strip.downcase

reverse_string = orig_string.reverse

if reverse_string == orig_string
    puts "Yes! It's Palindrom!"
else 
    puts "No, usual..."
end