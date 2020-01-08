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


ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

User.create(username: "RandyHer", password:"123456", grade: "1st")
User.create(username: "RegisHer", password:"123456", grade: "2nd")



Problem.create(number_sentence: "1 + 9 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "2 + 8 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "3 + 7 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "4 + 6 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "5 + 5 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "6 + 4 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "7 + 3 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "8 + 2 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "9 + 1 =", problem_type: "Addition Tens Fact", grade: "1st")

Problem.create(number_sentence: "5 - 5 =", problem_type: "Subtraction Minus-Itself", grade: "1st")
Problem.create(number_sentence: "7 - 7 =", problem_type: "Subtraction Minus-Itself", grade: "1st")
Problem.create(number_sentence: "8 - 8 =", problem_type: "Subtraction Minus-Itself", grade: "1st")
Problem.create(number_sentence: "9 - 9 =", problem_type: "Subtraction Minus-Itself", grade: "1st")



Problem.create(number_sentence: "10 - 5 =", problem_type: "Subtraction Halving", grade: "1st")
Problem.create(number_sentence: "8 - 4 =", problem_type: "Subtraction Halving", grade: "1st")
Problem.create(number_sentence: "6 - 3 =", problem_type: "Subtraction Halving", grade: "1st")
Problem.create(number_sentence: "4 - 2 =", problem_type: "Subtraction Halving", grade: "1st")


Problem.create(number_sentence: "1 + 1 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "2 + 2 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "3 + 3 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "4 + 4 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "6 + 6 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "7 + 7 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "8 + 8 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "9 + 9 =", problem_type: "Addition Doubles Fact", grade: "1st")
Problem.create(number_sentence: "10 + 10 =", problem_type: "Addition Doubles Fact", grade: "1st")

Problem.create(number_sentence: "7 + 4 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "7 + 6 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "7 + 8 =", problem_type: "Addition", grade: "1st")


Problem.create(number_sentence: "8 + 3 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "8 + 4 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "8 + 7 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "8 + 9 =", problem_type: "Addition", grade: "1st")

Problem.create(number_sentence: "9 + 3 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "9 + 4 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "9 + 6 =", problem_type: "Addition", grade: "1st")
Problem.create(number_sentence: "9 + 8 =", problem_type: "Addition", grade: "1st")


Problem.create(number_sentence: "10 - 1 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 2 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 3 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 4 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 6 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 7 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 8 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 9 =", problem_type: "Subtraction Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 - 10 =", problem_type: "Subtraction Tens Fact", grade: "1st")

Problem.create(number_sentence: "10 + 6 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 + 7 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 + 8 =", problem_type: "Addition Tens Fact", grade: "1st")
Problem.create(number_sentence: "10 + 9 =", problem_type: "Addition Tens Fact", grade: "1st")

Problem.create(number_sentence: "6 + 8 =", problem_type: "Addition Inside-Doubles Fact", grade: "1st")
Problem.create(number_sentence: "7 + 9 =", problem_type: "Addition Inside-Doubles Fact", grade: "1st")
Problem.create(number_sentence: "8 + 10 =", problem_type: "Addition Inside-Doubles Fact", grade: "1st")
Problem.create(number_sentence: "9 + 11 =", problem_type: "Addition Inside-Doubles Fact", grade: "1st")

Problem.create(number_sentence: "20 - 14 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 13 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 12 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 11 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 9 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 8 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 7 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 6 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 5 =", problem_type: "Subtraction Tens Fact", grade: "2nd")
Problem.create(number_sentence: "20 - 4 =", problem_type: "Subtraction Tens Fact", grade: "2nd")

Problem.create(number_sentence: "3 + 17 =", problem_type: "Addition Tens Fact", grade: "2nd")
Problem.create(number_sentence: "6 + 14 =", problem_type: "Addition Tens Fact", grade: "2nd")
Problem.create(number_sentence: "7 + 13 =", problem_type: "Addition Tens Fact", grade: "2nd")
Problem.create(number_sentence: "8 + 12 =", problem_type: "Addition Tens Fact", grade: "2nd")

Problem.create(number_sentence: "11 + 13 =", problem_type: "Addition Inside-Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "12 + 14 =", problem_type: "Addition Inside-Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "13 + 15 =", problem_type: "Addition Inside-Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "14 + 16 =", problem_type: "Addition Inside-Doubles Fact", grade: "2nd")

Problem.create(number_sentence: "11 - 8 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "13 - 8 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "14 - 9 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "16 - 9 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "17 - 8 =", problem_type: "Subtraction", grade: "2nd")

Problem.create(number_sentence: "11 + 11 =", problem_type: "Addition Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "12 + 12 =", problem_type: "Addition Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "13 + 13 =", problem_type: "Addition Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "14 + 14 =", problem_type: "Addition Doubles Fact", grade: "2nd")
Problem.create(number_sentence: "15 + 15 =", problem_type: "Addition Doubles Fact", grade: "2nd")

Problem.create(number_sentence: "20 - 10 =", problem_type: "Subtraction Halving", grade: "2nd")
Problem.create(number_sentence: "18 - 9 =", problem_type: "Subtraction Halving", grade: "2nd")
Problem.create(number_sentence: "16 - 8 =", problem_type: "Subtraction Halving", grade: "2nd")
Problem.create(number_sentence: "14 - 7 =", problem_type: "Subtraction Halving", grade: "2nd")
Problem.create(number_sentence: "12 - 6 =", problem_type: "Subtraction Halving", grade: "2nd")

Problem.create(number_sentence: "19 - 4 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "19 - 6 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "19 - 7 =", problem_type: "Subtraction", grade: "2nd")
Problem.create(number_sentence: "19 - 8 =", problem_type: "Subtraction", grade: "2nd")
