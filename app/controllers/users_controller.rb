class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    byebug
    "hi"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :username, :password_digest, :email, :bio)
  end

end
