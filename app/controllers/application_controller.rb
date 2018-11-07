class ApplicationController < ActionController::API
  before_action :authenticate_request, :set_headers
  attr_reader :current_user

  private
  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized.' }, status: 401 unless @current_user
  end

  def set_headers
    response.set_header("Accept", "application/json")
    response.set_header("Content-Type", "application/json")
  end
end
