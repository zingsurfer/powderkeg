class Snowcast
  def initialize(data = {})
    snow_chance = data["data"]["weather"][0]["chanceofsnow"]
  end
end
