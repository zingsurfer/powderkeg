class Api::V1::Snowcast
  attr_reader :id, :snow_chance, :resort_id, :resort_name
  def initialize(data = {}, resort)
    @snow_chance = data[0]["chanceofsnow"]
    @resort_id = resort.id
    @resort_name = resort.name
  end
end
