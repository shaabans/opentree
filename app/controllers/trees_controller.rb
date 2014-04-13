class TreesController < ApplicationController
  def index
  end

  def show
    @tree = get_flickr_photo params[:id] 
  end
end
