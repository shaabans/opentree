class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_flickr
    require 'flickraw'
    FlickRaw.api_key="e3a2482b9cddd488eefb60638fc3cc29"
    FlickRaw.shared_secret="1d51ecc8a4105776"
    
    list = flickr.photos.search tags: "opentree",
                                extras: "owner_name,date_taken"
    
#    id     = list[0].id
#    secret = list[0].secret
#    info = flickr.photos.getInfo :photo_id => id, :secret => secret
#    
#    puts info.title           # => "PICT986"
#    puts info.dates.taken     # => "2006-07-06 15:16:18"
#    
#    sizes = flickr.photos.getSizes :photo_id => id
#    
#    original = sizes.find {|s| s.label == 'Original' }
#    puts original.width       # => "800" -- may fail if they have no original marked image
    return list
  end
end
