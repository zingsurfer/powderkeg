class Api::V1::SnowcastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :snowcast
  attributes :snow_chance, :resort_name
  belongs_to :resort
end
