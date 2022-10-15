class FilmReader

    def read_from_file(file_name)
    
        if File.exists?(file_name)
        

            film = File.new(file_name, "r:UTF-8")
            lines = film.readlines
            film.close
            
            num = rand(lines.length)
                
            if num % 2 == 1
                num -= 1
            end
        
            #puts lines[num]        
            #puts lines[num + 1]
            
            return lines[num], lines[num + 1]
        
        else
            puts "File with films not found"
            return abort
        end
    end
end