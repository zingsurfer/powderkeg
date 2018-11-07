class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate_request
  def create
    binding.pry
    authenticate params[:email], params[:password]

  end

  def destroy

  end

  private
  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)
    if command.success?

      render json: {
        api_key: command.result,
        message: 'Successfully logged in.'
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

end
