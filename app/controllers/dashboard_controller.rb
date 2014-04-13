class DashboardController < ApplicationController
  def index
    @trees = get_flickr
  end
end
