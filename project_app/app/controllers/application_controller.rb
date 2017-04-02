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




before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me, :picture, :picture_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :remember_me, :picture, :picture_cache])




  end
end


