class Api::V1::WorldWeatherService
  def initialize(resort)
    @resort = resort
  end

  def snowcast_data
    JSON.parse(response("/premium/v1/ski.ashx").body)["data"]["weather"]
  end

  private
  def conn
    Faraday.new(url: "https://api.worldweatheronline.com") do |faraday|
      faraday.params["key"] = ENV["world_weather_api_key"]
      faraday.params["format"] = "json"
      faraday.params["q"] = "#{@resort.latitude},#{@resort.longitude}"
      faraday.adapter Faraday.default_adapter
    end
  end

  def response(url)
    conn.get(url)
  end
end
