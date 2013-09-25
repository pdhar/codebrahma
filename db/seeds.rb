# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all(['id NOT IN (?)', 1])
user2 = User.create!(name: "Pranav 2", provider: "facebook")
user3 = User.create!(name: "Pranav 3", provider: "a")
user4 = User.create!(name: "Pranav 4", provider: "a")
user5 = User.create!(name: "Pranav 5", provider: "a")
user6 = User.create!(name: "Pranav 6", provider: "a")

Feed.delete_all()
Feed.create!(post: "P2 - hi1", user_id: user2.id)
Feed.create!(post: "P2 - hi2", user_id: user2.id)
Feed.create!(post: "P2 - hi3", user_id: user2.id)
Feed.create!(post: "P2 - hi4", user_id: user2.id)

Feed.create!(post: "P3 - hi1", user_id: user3.id)
Feed.create!(post: "P3 - hi2", user_id: user3.id)
Feed.create!(post: "P3 - hi3", user_id: user3.id)
Feed.create!(post: "P3 - hi4", user_id: user3.id)

Feed.create!(post: "P4 - hi1", user_id: user4.id)
Feed.create!(post: "P4 - hi2", user_id: user4.id)
Feed.create!(post: "P4 - hi3", user_id: user4.id)
Feed.create!(post: "P4 - hi4", user_id: user4.id)

Feed.create!(post: "P5 - hi1", user_id: user5.id)
Feed.create!(post: "P5 - hi2", user_id: user5.id)
Feed.create!(post: "P5 - hi3", user_id: user5.id)
Feed.create!(post: "P5 - hi4", user_id: user5.id)

Feed.create!(post: "P6 - hi1", user_id: user6.id)
Feed.create!(post: "P6 - hi2", user_id: user6.id)
Feed.create!(post: "P6 - hi3", user_id: user6.id)
Feed.create!(post: "P6 - hi4", user_id: user6.id)