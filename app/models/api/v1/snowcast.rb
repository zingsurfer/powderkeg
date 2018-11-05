class Api::V1::Snowcast
  attr_reader :id, :feel_temp, :resort_id, :resort_name, :snow_chance
  def initialize(ww_data = {}, ds_data = {}, resort)
    @feel_temp = ds_data["currently"]["apparentTemperature"]
    @resort_id = resort.id
    @resort_name = resort.name
    @snow_chance = ww_data[0]["chanceofsnow"]
  end
end
