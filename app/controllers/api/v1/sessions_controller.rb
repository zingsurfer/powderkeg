class Api::V1::SessionsController < ApplicationController

  def create
    authenticate params[:email], params[:password]
  end

  private
  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)
    if command.success?
      render json: { api_key: command.result,
                     message: 'Successfully logged in.'
                   }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

end
