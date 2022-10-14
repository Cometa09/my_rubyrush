current_path = File.dirname(__FILE__)
path1 = current_path + "/data/foreheads.txt"
path2 = current_path + "/data/eyes.txt"
path3 = current_path + "/data/noses.txt"
path4 = current_path + "/data/mouths.txt"

if File.exist?(path1)
    foreheads = File.new(path1, "r:UTF-8")
    foreheads_lines = foreheads.readlines
    foreheads.close
    puts foreheads_lines.sample
else
    puts "Файл foreheads не найден"
end

if File.exist?(path2)
    eyes = File.new(path2, "r:UTF-8")
    eyes_lines = eyes.readlines
    eyes.close
    puts eyes_lines.sample
else
    puts "Файл eyes не найден"
end

if File.exist?(path3)
    noses = File.new(path3, "r:UTF-8")
    noses_lines = noses.readlines
    noses.close
    puts noses_lines.sample
else
    puts "Файл noses не найден"
end

if File.exist?(path4)
    mouths = File.new(path4, "r:UTF-8")
    mouths_lines = mouths.readlines
    mouths.close
    puts mouths_lines.sample
else
    puts "Файл mouths не найден"
end


