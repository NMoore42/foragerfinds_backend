class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  #Including wraps params here to include the password parameter that is left our of params wrapper by default
  wrap_parameters :user, include: [:first_name, :last_name, :birthday, :username, :password, :email, :bio]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end


  #Register
  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { error: "Failed to create user" }, status: :not_acceptable
    end
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :username, :password, :email, :bio)
  end

end
