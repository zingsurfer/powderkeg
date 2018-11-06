class Api::V1::SnowcastController < ApplicationController
  skip_before_action :authenticate_request
  def show
    resort = Resort.find_by(name: params[:location])
    snowcast = Api::V1::SnowcastRetriever.new(resort).snowcast_hash
    render json: snowcast
  end
end
