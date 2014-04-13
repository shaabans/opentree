class DashboardController < ApplicationController
  def index
    @trees = get_flickr_list
  end
end
