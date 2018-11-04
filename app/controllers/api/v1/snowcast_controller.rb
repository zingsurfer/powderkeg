class Api::V1::SnowcastController < ApplicationController
  def show
    resort = Resort.find_by(name: params[:location])
    conn = Faraday.new(url: "https://api.worldweatheronline.com") do |faraday|
      faraday.params["key"] = ENV["world_weather_api_key"]
      faraday.params["format"] = "json"
      faraday.params["q"] = "#{resort.latitude},#{resort.longitude}"
      faraday.adapter Faraday.default_adapter
    end
    response = conn.get("/premium/v1/ski.ashx")

    snowcast_data = JSON.parse(response.body)
    snowcast = Api::V1::Snowcast.new(snowcast_data)

    snowcast_json = Api::V1::SnowcastSerializer.new(snowcast).serialized_json
    render json: snowcast
  end

end
