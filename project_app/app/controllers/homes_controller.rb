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
        apikey="apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5&"
        latlong="latlong=#{result.ll}&"
        rad = "radius=1&unit=miles"
        url ="https://app.ticketmaster.com/discovery/v2/events.json?"+size+apikey+latlong+rad
        # size=10&apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5&latlong=40.730610,-73.935242&radius=1&unit=miles
        # @response = getApi("http://www.ticketsnow.com/InventoryBrowse/ticket_list.aspx?PID=2073068")
        # array.uniq { |e| e[:name] }
         @ticket_list= getApi(url).parsed_response["_embedded"]["events"]
          @eventClassifiaction=@ticket_list.uniq { |e| e["classifications"][0]["segment"]["name"] }
        # @eventClassifiaction =getApi('https://app.ticketmaster.com/discovery/v2/classifications.json?apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5')

        # session[:ticket_list]=@ticket_list
    end


def renderEvent

  @event = params[:id]  
end


end
