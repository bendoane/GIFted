class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
    @user_session = UserSession.new(params[:user_session])
  end

  def create
    @user = User.new(user_params)
    @user.save!
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
