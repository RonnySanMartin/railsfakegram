# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: "admin", description: "Site Administrator")
Role.create(name: "user", description: "Common user")
# Users

user = User.new(
  :email => "admin@mail.com",
  :password => "123456",
  :password_confirmation => "123456",
  :role_id => 1,
)
user.save!
1.upto(5).each do |x|
  user = User.new(
    :email => "u#{x}@mail.com",
    :password => "123456",
    :password_confirmation => "123456",
  )
  user.save!
end

1.upto(20).each do
  r_ximg = rand(200) + 600
  r_yimg = rand(200) + 600
  r_user = 2 + rand(5)
  user = User.find(r_user)
  user.images.create(path: "https://picsum.photos/#{r_ximg}/#{r_yimg}", alt: "#{r_ximg}x#{r_yimg}")
end
