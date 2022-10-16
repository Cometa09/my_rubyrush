current_path = File.dirname(__FILE__)
faces_path = current_path + "/faces"

path1 = current_path + "/data/foreheads.txt"
path2 = current_path + "/data/eyes.txt"
path3 = current_path + "/data/noses.txt"
path4 = current_path + "/data/mouths.txt"

time = Time.now
file_name = "face_" + time.strftime("%Y.%m.%d %H-%S") + ".txt"

file = File.new(faces_path + "/" + file_name, "a:UTF-8")

if File.exist?(path1)
    foreheads = File.new(path1, "r:UTF-8")
    foreheads_lines = foreheads.readlines
    foreheads.close
else
    puts "Файл foreheads не найден"
end

if File.exist?(path2)
    eyes = File.new(path2, "r:UTF-8")
    eyes_lines = eyes.readlines
    eyes.close
else
    puts "Файл eyes не найден"
end

if File.exist?(path3)
    noses = File.new(path3, "r:UTF-8")
    noses_lines = noses.readlines
    noses.close
else
    puts "Файл noses не найден"
end

if File.exist?(path4)
    mouths = File.new(path4, "r:UTF-8")
    mouths_lines = mouths.readlines
    mouths.close
else
    puts "Файл mouths не найден"
end

puts "Start writing"

file.puts(foreheads_lines.sample)
file.puts(eyes_lines.sample)
file.puts(noses_lines.sample)
file.puts(mouths_lines.sample)

file.close

puts "All ok!"