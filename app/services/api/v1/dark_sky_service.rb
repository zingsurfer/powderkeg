class Api::V1::DarkSkyService
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def snowcast_data
    JSON.parse(response("/forecast/#{ENV["dark_sky_api_key"]}/#{@latitude},#{@longitude}").body)
  end

  private
  def conn
    Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def response(url)
    conn.get(url)
  end
end
