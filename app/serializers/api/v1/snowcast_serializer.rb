class Api::V1::SnowcastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :snowcast
  attributes :resort_name,
             :overall,
             :peak,
             :mid,
             :base
  belongs_to :resort
end
