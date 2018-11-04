class Api::V1::SnowcastController < ApplicationController
  def index
    snowcast = SnowcastFacade.new(resort).snowcast

    render json: snowcast
  end

  private
  def resort
    Resort.find_by(title: params[:location])
  end
end
