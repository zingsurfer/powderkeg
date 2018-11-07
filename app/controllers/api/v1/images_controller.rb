class Api::V1::ImagesController < ApplicationController

  def show
    image = Api::V1::ImageGenerator.new(params[:query]).image_hash
    render json: image
  end
  
end
