options = ["0", "КАМЕНЬ", "НОЖНИЦЫ", "БУМАГА"]

i = 0
for i in (1..3)

    pc_choice = rand(1..3)
    
    user_choice = nil
    until user_choice == 1 || user_choice == 2 || user_choice == 3 do
        puts "Выбери!"
        puts "Камень(1) - ножницы(2) - бумага(3)!"
        user_choice = gets.to_i
    end

        puts "Вы выбрали - #{options[user_choice]}!"
        puts "Кмопьютер выбрал - #{options[pc_choice]}!"

        if pc_choice == user_choice
            puts "Ничья!"
        elsif pc_choice == 1 && user_choice == 2
            puts "PC WIN"
        elsif pc_choice == 1 && user_choice == 3
            puts "User WIN"
        elsif pc_choice == 2 && user_choice == 1
            puts "User WIN"
        elsif pc_choice == 2 && user_choice == 3
            puts "PC WIN"
        elsif pc_choice == 3 && user_choice == 1
            puts "PC WIN"
        elsif pc_choice == 3 && user_choice == 2
            puts "User WIN"  
        end
        i +=1
        puts "_____________"
end
