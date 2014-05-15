# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
url_resto =["http://www.thecoolist.com/wp-content/uploads/2010/09/pio-pio-restaurant_sebastian-marsical-studio_1.jpg",
"http://cdn.home-designing.com/wp-content/uploads/2010/11/Japanese-Restaurant-Design-red-round-pendants.jpeg",
"http://retaildesignblog.net/wp-content/uploads/2013/02/SHARED-TERRACE-restaurant-Moment-Design-Tokyo-03.jpg",
"http://retaildesignblog.net/wp-content/uploads/2012/10/Yakaniku-Sakamoto-restaurant-by-design-office-Dress-Osaka.jpg",
"http://cdn.home-designing.com/wp-content/uploads/2010/11/Modern-Restaurant-design-red-accent-wall.jpeg"]

10.times do
  restaurant_params = {
    name: Faker::Company.name,
    adress: Faker::Address.street_address,
    zipcode: Faker::Address.zip_code.to_i,
    city: Faker::Address.city,
    photo_url: url_resto[rand(4)]}

    Restaurant.create(restaurant_params)
end