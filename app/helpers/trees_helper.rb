module TreesHelper
  def flickr_user_url(user_id)
    "http://www.flickr.com/people/#{user_id}/"
  end

  def flickr_photo_url(user_id, farm_id, server_id, secret)
    "http://farm#{farm_id}.staticflickr.com/#{server_id}/#{user_id}_#{secret}_m.jpg"
  end
end
