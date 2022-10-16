curent_path = File.dirname(__FILE__)

time = Time.now
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "-----------------------"

file = File.new(curent_path + "/" + file_name + ".txt", "a:UTF-8")

puts "Hello, writing to file..."

file.puts "Time: #{time_string}"
file.puts("Hello, file!")
file.close
puts "Record Done"