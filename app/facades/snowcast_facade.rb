class SnowcastFacade < ApplicationController
  def initialize(resort)
    @resort = resort
  end

  def snowcast
    @snowcast ||= Api::V1::DarkSkyService.new(@resort.latitude, @resort.longitude)


    conn = Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/forecast/#{ENV["DARKSKY_API_KEY"]}/#{@resort.latitude},#{@resort.longitude}")
    data = JSON.parse(response.body)
    snowcast = Snowcast.new(data)
  end
end
