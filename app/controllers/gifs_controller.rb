class GifsController < ApplicationController

def index
  @gifs = Gif.all
  @gif = Gif.new
  @user_session = UserSession.new
end

def show
  @gif = Gif.find(params[:id])
end

def new
  @gif = Gif.new
end

def create
  @gif = Gif.new(gif_params)
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
