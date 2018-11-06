class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate_request
  def create
  end
end
