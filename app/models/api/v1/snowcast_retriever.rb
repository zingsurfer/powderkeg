class Api::V1::SnowcastRetriever
  def initialize(resort)
    @resort = resort
  end

  def snowcast_hash
    Api::V1::SnowcastSerializer.new(snowcast).serializable_hash
  end

  private
  def snowcast
    snowcast ||= Api::V1::Snowcast.new(snowcast_data, @resort)
  end
  def snowcast_data
    snowcast_data ||= Api::V1::WorldWeatherService.new(@resort).snowcast_data
  end
end
