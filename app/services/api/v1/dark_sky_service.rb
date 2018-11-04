class Api::V1::DarkSkyService
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def data
    JSON.parse(api_response.body)
  end

  private
  def conn
    Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def api_response
    conn.get("/forecast/#{ENV["DARKSKY_API_KEY"]}/#{@latitude},#{@longitude}")
  end

end
