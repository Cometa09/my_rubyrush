temp = ARGV[0]
month = ARGV[1]

if temp == nil
    puts "Какая сейчас температура?"
    temp = STDIN.gets.to_i
else 
    temp = temp.to_i
end

if month == nil
    month = nil
    until month == 0 || month == 1 || month == 2 || month == 3 do
        puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
        month = STDIN.gets.to_i
    end
else
    month = month.to_i
end

if month == 1 && (temp > 15 || temp < 35)
    puts "Скорее идите в парк, соловьи поют!"
else 
    if (temp >= 22 && temp <= 30)
        puts "Скорее идите в парк, соловьи поют!"
    else 
        puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
    end
end
