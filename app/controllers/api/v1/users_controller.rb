class Api::V1::UsersController < ApplicationController

  def create # sends a token for user if succeeds
    user = User.create(user_params)
    command = AuthenticateUser.call(user.email, user.password)

    if command.success?
      render status: 201,
             json: { api_key: command.result,
                     message: "Successfully created account."
                   }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
