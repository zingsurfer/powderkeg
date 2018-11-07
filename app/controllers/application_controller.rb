class ApplicationController < ActionController::API
  before_action :set_headers
  attr_reader :current_user

  private

  def set_headers
    response.set_header("Accept", "application/json")
    response.set_header("Content-Type", "application/json")
  end
end
