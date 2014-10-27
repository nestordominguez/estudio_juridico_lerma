# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# (1..50).each do |i|
# 	Contacto.create(:name => "Cliente #{i}", :phone => "123456#{i}",
# 	:email => "Cliente-#{i}@example.com", :comentarios => "Hola buenas tardes")
# end
(1..10).each do |i|
    User.create(:email => "user_#{i}@example.com", :password => "magoloco",
            :password_confirmation => "magoloco")
end