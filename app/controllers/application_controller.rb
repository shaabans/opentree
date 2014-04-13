class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_flickr_list
    require 'flickraw'
    FlickRaw.api_key="e3a2482b9cddd488eefb60638fc3cc29"
    FlickRaw.shared_secret="1d51ecc8a4105776"
    
    list = flickr.photos.search user_id: "42628740@N02",
                                tags: "opentree",
                                extras: "owner_name,date_taken,geo"
    return list
  end

  def get_flickr_photo(id)
    return flickr.photos.getInfo photo_id: id
  end

end
