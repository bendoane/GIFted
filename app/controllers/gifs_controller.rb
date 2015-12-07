class GifsController < ApplicationController

def index
  @gifs = Gif.all
  @gif = Gif.new
  @user_session = UserSession.new
    respond_to do |format|
      format.html {}
      format.js{ render :json =>@gifs.to_json}
    end
end

def show
  @selected = Gif.find(params[:id])
end

def new
  @gif = Gif.new
  @gif.author = current_user
end

def create
  @gif = Gif.new(gif_params)
  @gif.author = current_user.username
  if @gif.save
    respond_to do |format|
      format.html {redirect_to root_url}
      format.js{}
    end
  else
    render "new"
  end
end

private
def gif_params
  params.require(:gif).permit(:title, :url)
end


end
