class Api::V1::ImagesController < ApplicationController
  skip_before_action :authenticate_request

  def show
  end
end
