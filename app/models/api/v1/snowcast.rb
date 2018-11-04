class Api::V1::Snowcast
  attr_accessor :id, :snow_chance
  def initialize(data = {})
    @snow_chance = data["data"]["weather"][0]["chanceofsnow"]
  end
end
