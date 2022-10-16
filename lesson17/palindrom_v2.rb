puts "Введите фразу:"
orig_string = STDIN.gets.downcase.chomp
 
stripped_string = orig_string.delete(' ,.-?!:;_').downcase

reverse_string = stripped_string.reverse

if reverse_string == stripped_string
    puts "Yes! It's Palindrom!"
else 
    puts "No, usual..."
end