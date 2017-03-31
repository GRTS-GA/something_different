class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   require 'httparty'
   require 'geokit'

  def getApi(address)
    response = HTTParty.get(address)
  end

  def apikey
    apkey="apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5"
  end



end
