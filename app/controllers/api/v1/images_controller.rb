class Api::V1::ImagesController < ApplicationController
  skip_before_action :authenticate_request

  def show
    image_data = Api::V1::UnsplashService.new.random_photo_data
    image = Api::V1::Image.new(image_data)
    image_hash = Api::V1::ImageSerializer.new(image).serializable_hash
    render json: image_hash
  end
end
