# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Game.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

User.create(username: "RandyHer", password:"123456")
User.create(username: "RegisHer", password:"123456")

Game.create(user_id: 1, score:"21", time_remaining: 30)
Game.create(user_id: 1, score:"22", time_remaining: 23)
Game.create(user_id: 1, score:"21", time_remaining: 12)

Game.create(user_id: 2, score:"21", time_remaining: 32)
Game.create(user_id: 2, score:"24", time_remaining: 23)
