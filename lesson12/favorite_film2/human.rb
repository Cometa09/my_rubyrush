class Human

    def initialize(first_name, second_name, human_age)
        @first_name = first_name
        @second_name = second_name
        @human_age = human_age.to_i

        @film = nil
    end


    def age
        if @human_age < 60
            puts "Вам #{@human_age} лет, вы молодой"
        else
            puts "Вам #{@human_age} лет, вы пожилой"
        end
    end


    def full_name
        puts "#{@first_name} #{@second_name}"
    end

    def film=(film)
        @film = film
    end

    def film
        return @film
    end

end