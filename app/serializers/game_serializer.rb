class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :time_remaining
end
