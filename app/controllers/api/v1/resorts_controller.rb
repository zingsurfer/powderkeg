class Api::V1::ResortsController < ApplicationController
  def index
    render json: Resort.all
  end
end
