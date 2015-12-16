class StaticPagesController < ApplicationController
  def home
    @addresses = Address.all
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      address_path = view_context.link_to address.full_address, address_path(address)
      marker.lat address.latitude
      marker.lng address.longitude
      marker.infowindow "<b>#{address_path}</b>"
    end
  end

  def help
    @options = [[0],[1]]
    @user = Array.new
    @user.options = [[0],[1]]
  end

  def faq
  end

  def contact
  end
end
