module ApplicationHelper

  def nav_link(link_text, link_path)
    if link_path == "/" then
      class_value = current_page?(link_path) ? 'active' : ''
    else
      class_value = (request.original_fullpath.include? link_path) ? 'active' : ''
    end

    content_tag(:li, :class => class_value) do
      link_to link_text, link_path
    end
  end

  def flickr_user_url(user_id)
    return "http://www.flickr.com/people/#{user_id}/"
  end


end

module APP_VERSION
  MAJOR = 0
  MINOR = 1
  TINY  = 0

  STRING = [MAJOR, MINOR, TINY].compact.join(".")
end