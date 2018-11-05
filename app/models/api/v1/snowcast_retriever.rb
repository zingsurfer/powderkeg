class Api::V1::SnowcastRetriever
  def initialize(resort)
    @resort = resort
  end

  def snowcast_hash
    Api::V1::SnowcastSerializer.new(snowcast).serializable_hash
  end

  private
  def snowcast
    snowcast ||= Api::V1::Snowcast.new(world_weather_data, dark_sky_data, @resort)
  end
  def world_weather_data
    world_weather_data ||= Api::V1::WorldWeatherService.new(@resort).snowcast_data
  end
  def dark_sky_data
    dark_sky_data ||= Api::V1::DarkSkyService.new(@resort.latitude, @resort.longitude).snowcast_data
  end
end
