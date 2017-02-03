# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!( email: "user@user.com", password: "pas123", password_confirmation: "pas123")
User.create!( email: "user2@user.com", password: "pas123", password_confirmation: "pas123")
User.create!( email: "user3@user.com", password: "pas123", password_confirmation: "pas123")

1.times do
  User.create!(
    email:                 Faker::Internet.email,
    password:              "pas123",
    password_confirmation: "pas123"
  )
end
users = User.all

15.times do
  List.create!(
    user: users.sample,
    name: Faker::Hacker.ingverb
  )
end
lists = List.all

50.times do
  Item.create!(
    list: lists.sample,
    name: Faker::Hacker.ingverb
  )
end

puts "Seed finished"
puts "#{User.count} users created."
puts "#{List.count} lists created."
puts "#{Item.count} items created."
