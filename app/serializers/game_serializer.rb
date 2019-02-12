class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :time_remaining, :game_type, :problems
end
