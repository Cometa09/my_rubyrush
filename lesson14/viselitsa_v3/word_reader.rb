class WordReader

    def read_from_file(file_name)
        if !File.exists?(file_name)
            return nil
        end
        
        word = File.new(file_name, "r:UTF-8")
        word_lines = word.readlines
        word.close
    
        return word_lines.sample
    end
      
end