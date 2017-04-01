class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :loadactiveEventSearch, only:[:create]
   require 'httparty'
   require 'geokit'

  def getApi(address)
    response = HTTParty.get(address)
  end

  def apikey
    apkey="apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5"
  end


  def loadactiveEventSearch
     if current_user && defined?(session[:activeEventSearch]) #(defined?(session[:activeEventSearch])).nil?
        if session[:activeEventSearch] === nil
        else
          redirect_to :controller => '/homes', :action => 'show' , :id=>session[:activeEventSearch] 
            
        end
      end
   end

end
