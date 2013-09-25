# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: "Pranav", description: "a")
User.create!(name: "Kiran", description: "a")
User.create!(name: "Chandra", description: "a")
User.create!(name: "Kapil", description: "a")
User.create!(name: "kirandermasurge", description: "a")

#Feed.delete_all()
Feed.create!(message: "hi1", user_from: "kirandermasurge", chatuser_id: a.id)
Feed.create!(message: "hi2", user_from: "Pranav", chatuser_id: a.id)
Feed.create!(message: "hi3", user_from: "kirandermasurge", chatuser_id: a.id)
Feed.create!(message: "hi4", user_from: "Pranav", chatuser_id: a.id)