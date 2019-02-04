class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :time_remaining, :problems, :answers
end
