# test query contacts

require 'sqlite3'

db = SQLite3::Database.open 'contacts.sqlite'

db.results_as_hash = true

#results = db.query 'SELECT * FROM people WHERE company_id=?', 2

company_id = db.execute 'SELECT id FROM companies WHERE name=?', "Гугл"
comp = company_id[0]['id']

#results = db.query SELECT * FROM people WHERE company_id =( SELECT id FROM companies WHERE name = 'Гугл')

results = db.query ("SELECT * FROM people WHERE company_id = #{comp}")


#for result in results do
#  puts result.to_s
#end

#results.each{|row| puts row}

results.each do |row|
puts "#{row['name']} --> #{row['phone']} --> #{row['birthday']} -->  #{row['company_id']}"
end
