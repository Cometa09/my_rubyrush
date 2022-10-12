5.times do
    
    heroes = gets.chomp

    case heroes
    when "betmen"
        puts "Джокер!"
    when "tom"
        puts "jerry!"
    when "заяц"
        puts "волк"
    when "нео"
        puts "смит!"
    else
        puts "Sorry? we don't know..."
    end

end