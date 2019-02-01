class Problem < ApplicationRecord

  has_many :gamesproblems
  has_many :games, through: :gamesproblems

end
