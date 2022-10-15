class FilmReader

    def read_from_file(file_name)
    
        if !File.exists?(file_name)
            puts "File not found"
            return nil
        end

        film = File.new(file_name, "r:UTF-8")
        lines = film.readlines
        film.close
        
        return lines.sample
    end
end