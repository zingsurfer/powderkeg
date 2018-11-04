class SnowcastFacade
  def initialize(resort)
    @resort = resort
  end

  def snowcast
    Snowcast.new(retrieve_data)
  end

  def retrieve_data
    Api::V1::DarkSkyService.new(@resort.latitude, @resort.longitude).data
  end
end
