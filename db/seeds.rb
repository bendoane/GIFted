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

1.times do
  base = Gif.new
  base.url = "http://i.giphy.com/5Y2bU7FqLOuzK.gif"
  base.title = "Hooray GIFts!"
  base.save
end

1.times do
  base = Gif.new
  base.url = "http://i.giphy.com/xTk9ZLj9FyrWBePxfO.gif"
  base.title = "GIFt Punch"
  base.save
end

1.times do
  base = Gif.new
  base.url = "http://i.giphy.com/xTiTnd3K6Ic28zkPcY.gif"
  base.title = "A GIFt"
  base.save
end

1.times do
  base = Gif.new
  base.url = "http://i.giphy.com/arXSjaMhRnKV2.gif"
  base.title = "Deniro GIFt"
  base.save
end

1.times do
  base = Gif.new
  base.url = "http://i.giphy.com/3o85xH5M3w84dA3MIg.gif"
  base.title = "Hiding and Waiting"
  base.save
end
