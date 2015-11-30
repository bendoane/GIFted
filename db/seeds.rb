# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.times do
base = Gif.new
base.url = "http://i.giphy.com/drKUWHwhWXIFW.gif"
base.title = "Icon"
base.save
end

8.times do
base = Gif.new
base.url = "http://i.giphy.com/xTiTnd3K6Ic28zkPcY.gif"
base.title = "A GIFt"
base.save
end
