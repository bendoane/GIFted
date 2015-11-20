class UserSessionsController < ApplicationController

  def index

  end

  def new
    @user_session = UserSession.new
    respond_to do |format|
      format.html
      format.xml {render :xml => @user_session}
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to @user_session, notice: "Welcome" }
        format.json { render :xml => @user_session, :status => :created, :location => @user_session}
      else
        format.html { render :action => "new" }
        format.json { render :xml => @user_session. errors, :status => :unprocessable_entity}
      end
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
  end

  private
    def set_user_session
      @user_session = UserSession.find(params[:id])
    end

    def user_session_params
      params.require(:user_session).permit(:username, :password)
    end
end
