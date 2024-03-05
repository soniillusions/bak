require 'sqlite3'

db = SQLite3::Database.new '/home/aleksey/Desktop/Projects/bak/rubylesson25/carsdatabase'

db.execute "SELECT * FROM Cars" do |car|
  puts car
  puts "===="
end

db.close