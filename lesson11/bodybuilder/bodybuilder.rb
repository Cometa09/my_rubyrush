class Bodybuilder

    def initialize(triceps, biceps, deltovidka)
        @triceps = triceps
        @biceps = biceps
        @deltovidka = deltovidka
    end


    def pump(muscle)

        case muscle
        when "triceps"
            @triceps +=1

        when "biceps"
            @biceps +=1

        when "deltovidka"
            @deltovidka +=1
        end      
        
    end


    def show_muscle
        puts "Трицепсы: #{@triceps}"
        puts "Бицепсы: #{@biceps}"
        puts "Дельтовидка: #{@deltovidka}"
    end
end
