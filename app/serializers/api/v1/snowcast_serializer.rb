class Api::V1::SnowcastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :snowcast
  attributes :resort_name,
             :overall,
             :top,
             :mid,
             :bot
  belongs_to :resort
end
