class Api::V1::ImagesController < ApplicationController
  skip_before_action :authenticate_request

  def show
    image = Api::V1::ImageGenerator.new(params[:query]).image_hash
    render json: image
  end
end
