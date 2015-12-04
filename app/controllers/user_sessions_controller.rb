class UserSessionsController < ApplicationController
  before_action :require_no_user, only: [:new, :create]
  before_action :require_user, only: [:destroy]

  def new
    @user_session = UserSession.new
    end

  def create
    @user_session = UserSession.new(user_session_params)
    @user_session.save
    redirect_to root_url
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url
  end

  private
    def set_user_session
      @user_session = UserSession.find(params[:id])
    end

    def user_session_params
      params.require(:user_session).permit(:username, :password)
    end
end
