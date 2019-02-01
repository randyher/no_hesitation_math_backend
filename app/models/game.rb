class Game < ApplicationRecord
  has_many :gamesproblems
  has_many :problems, through: :gamesproblems

  belongs_to :user
end
