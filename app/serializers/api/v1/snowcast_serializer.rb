class Api::V1::SnowcastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :snowcast
  attributes :feel_temp, :resort_name, :snow_chance
  belongs_to :resort
end
