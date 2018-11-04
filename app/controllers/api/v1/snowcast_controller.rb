class Api::V1::SnowcastController < ApplicationController
  def index
    resort = Resort.find_by(title: params[:location])
    snowcast = SnowcastFacade.new(resort).snowcast

      # conn = Faraday.new(url: "https://api.darksky.net") do |faraday|
      #   faraday.adapter Faraday.default_adapter
      # end
      #
      # response = conn.get("/forecast/#{ENV["DARKSKY_API_KEY"]}/#{resort.latitude},#{resort.longitude}")
      # data = JSON.parse(response.body)
      # snowcast = Snowcast.new(data)

    render json: snowcast
  end

end
