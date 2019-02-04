class Gamesproblem < ApplicationRecord
  belongs_to :game
  belongs_to :problem

  has_many :answers
end
