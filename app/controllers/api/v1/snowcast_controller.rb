class Api::V1::SnowcastController < ApplicationController
  def index
    # binding.pry
    resort = Resort.find_by(title: params[:location])
    # binding.pry
    conn = Faraday.new(url: "https://api.darksky.net") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
    # latitude = 42.3601
    # longitude = -71.0589
    response = conn.get("/forecast/#{ENV["DARKSKY_API_KEY"]}/#{resort.latitude},#{resort.longitude}")
    data = JSON.parse(response.body)
    snowcast = Snowcast.new(data)

    render json: snowcast
  end
end
