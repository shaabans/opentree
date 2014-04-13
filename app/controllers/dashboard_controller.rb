class DashboardController < ApplicationController
  def index
    @trees = get_flickr_list
    @marker_hash = Gmaps4rails.build_markers(@trees) do |tree, marker|
      marker.lat tree.latitude
      marker.lng tree.longitude
      marker.infowindow tree.title
    end
  end
end
