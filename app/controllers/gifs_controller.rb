class GifsController < ApplicationController

def index
  @gifs = Gif.all
end

def show
  @gif = Gif.find(params[:id])
end

def new
  @gif = Gif.new
end

def create
  @gif = Gif.new(gif_params)
  @gif.save!
end

private
def gif_params
  params.require(:gif).permit(:title, :url)
end


end
