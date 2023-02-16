# test create DB, insert, update, select read

require 'sqlite3'

db = SQLite3::Database.open 'test.sqlite'

db.results_as_hash = true

# create db
#db.execute "CREATE TABLE IF NOT EXISTS images(path TEXT, thumbs_up INT)"

# insert to db
#db.execute "INSERT INTO images (path, thumbs_up) VALUES (?, ?)", 'image1.png', 0
#db.execute "INSERT INTO images (path, thumbs_up) VALUES (?, ?)", 'test.jpg', 3

# update db
#db.execute "UPDATE images SET path=? WHERE thumbs_up=?", 'test.png', 2

# select from db
#image_path = 'test.png'
#results = db.query "SELECT path, thumbs_up FROM images WHERE path=?", image_path

results = db.query 'SELECT * FROM posts'

results.each do |row|
  puts "#{row['type']} --> #{row['text']} --> #{row['created_at']}"
end
