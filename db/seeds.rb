# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all(['id NOT IN (?)', 1])
user3 = User.create!(name: "Pranav 3", provider: "facebook")
user4 = User.create!(name: "Pranav 4", provider: "a")
user5 = User.create!(name: "Pranav 5", provider: "a")

Feed.delete_all()
Feed.create!(post: "hi1", user_id: user3.id)
Feed.create!(post: "hi2", user_id: user3.id)
Feed.create!(post: "hi3", user_id: user4.id)
Feed.create!(post: "hi4", user_id: user5.id)