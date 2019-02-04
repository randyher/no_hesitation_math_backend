# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Game.delete_all
Problem.delete_all
Gamesproblem.delete_all

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

Problem.create(number_sentence: "1 + 9 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "2 + 8 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "3 + 7 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "4 + 6 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "5 + 5 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "6 + 4 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "7 + 3 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "8 + 2 =", problem_type: "Tens Fact")
Problem.create(number_sentence: "9 + 1 =", problem_type: "Tens Fact")

Problem.create(number_sentence: "1 + 1 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "2 + 2 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "3 + 3 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "4 + 4 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "6 + 6 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "7 + 7 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "8 + 8 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "9 + 9 =", problem_type: "Doubles Fact")
Problem.create(number_sentence: "10 + 10 =", problem_type: "Doubles Fact")

Problem.create(number_sentence: "7 + 4 =", problem_type: "N/A")
Problem.create(number_sentence: "7 + 6 =", problem_type: "N/A")
Problem.create(number_sentence: "7 + 8 =", problem_type: "N/A")
Problem.create(number_sentence: "7 + 9 =", problem_type: "N/A")

Problem.create(number_sentence: "8 + 3 =", problem_type: "N/A")
Problem.create(number_sentence: "8 + 4 =", problem_type: "N/A")
Problem.create(number_sentence: "8 + 6 =", problem_type: "N/A")
Problem.create(number_sentence: "8 + 7 =", problem_type: "N/A")
Problem.create(number_sentence: "8 + 9 =", problem_type: "N/A")

Problem.create(number_sentence: "9 + 3 =", problem_type: "N/A")
Problem.create(number_sentence: "9 + 4 =", problem_type: "N/A")
Problem.create(number_sentence: "9 + 6 =", problem_type: "N/A")
Problem.create(number_sentence: "9 + 7 =", problem_type: "N/A")
Problem.create(number_sentence: "9 + 8 =", problem_type: "N/A")


Problem.create(number_sentence: "10 + 7 =", problem_type: "N/A")

Problem.create(number_sentence: "11 + 7 =", problem_type: "N/A")


Gamesproblem.create(game_id: 1, problem_id: 1)
Gamesproblem.create(game_id: 1, problem_id: 20)
Gamesproblem.create(game_id: 1, problem_id: 13)
Gamesproblem.create(game_id: 1, problem_id: 12)
Gamesproblem.create(game_id: 1, problem_id: 10)
