class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
    @user_session = UserSession.new(params[:user_session])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice]="Great Job!"
      redirect_to root_url
    else
      flash[:notice]="Hm. Something went wrong. Try again"
      redirect_to new_user_path
    end
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
