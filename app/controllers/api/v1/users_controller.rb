class Api::V1::UsersController < ApplicationController
  def create
    render json: User.create(user_params)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
