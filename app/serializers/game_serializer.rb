class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :player_id
  belongs_to :player
end
