class Film

    def initialize
        @film_name = 0
        @producer = 0
    end

    def choice_producer
        puts "Фильмы какого режиссера Вы хотите посмотреть?"
        @producer = gets.chomp.to_s
    end

    def list_film
        @films = []
        3.times do
            puts "Какой-нибудь его хороший фильм?"
            film_name = gets.chomp.to_s
            @films << film_name
        end
    end

    def choice_film
        puts "И сегодня вечером рекомендую посмотреть: #{@films.sample}"
        puts "Режиссера: #{@producer}"
    end
    
end

