class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create # sends a token for user if succeeds
    user = User.create(user_params)
    command = AuthenticateUser.call(user.email, user.password)

    if command.success?
      render json: { api_key: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
