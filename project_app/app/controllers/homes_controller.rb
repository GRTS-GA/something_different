class HomesController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  
end

def show
 
end


def new
 
end

 def search 
        result = Geokit::Geocoders::GoogleGeocoder.geocode params[:searchTxt]
        size="size=20&"
        session[:latlong]="&latlong=#{result.ll}&"
        session[:rad] = "radius=1&unit=miles"
        
        session[:initialUrl] ="https://app.ticketmaster.com/discovery/v2/events.json?"+size+apikey+session[:latlong]+session[:rad] 
        # size=10&apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5&latlong=40.730610,-73.935242&radius=1&unit=miles
        # @response = getApi("http://www.ticketsnow.com/InventoryBrowse/ticket_list.aspx?PID=2073068")
        # array.uniq { |e| e[:name] }
         ticket_list= getApi(session[:initialUrl]).parsed_response["_embedded"]["events"]
        @eventClassifiaction = ticket_list.uniq { |e| e["classifications"][0]["segment"]["name"] }
        # @eventClassifiaction =getApi('https://app.ticketmaster.com/discovery/v2/classifications.json?apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5')

        # session[:ticket_list]=@ticket_list
        render :index 
    end

  def searchByClass
   
      # url = "https://app.ticketmaster.com/discovery/v2/classifications/"+params[:id]+".json?"+size+apikey+session[:latlong]+session[:rad] 
      @ticket_list= getApi(session[:initialUrl]).
          parsed_response["_embedded"]["events"].each  do |e|
            e["classifications"][0]["segment"]["name"] === params[:id] 
          end
      render :index 
      
    # https://app.ticketmaster.com/discovery/v2/classifications/KZFzniwnSyZfZ7v7nE.json?apikey={apikey}"
  end


def renderEvent
  @event = params[:id]  
end


end
