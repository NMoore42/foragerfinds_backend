class UsersController < ApplicationController
  #Including wraps params here to include the password parameter that is left our of params wrapper by default
  wrap_parameters :user, include: [:first_name, :last_name, :birthday, :username, :password, :email, :bio]

  
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: "Failed to create user: #{@user.errors.full_messages}" }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :username, :password, :email, :bio)
  end

end
