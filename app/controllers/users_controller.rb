class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to(:users, :notice => "Success!")}
        format.xml {render :xml => @user, :status => :created, :location => @user}
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @user.errors, :status => :unprocessable_entity}
      end
    end
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
