class EventsController < ApplicationController

    def index 
       # byebug
    end


 def search 
        result = Geokit::Geocoders::GoogleGeocoder.geocode params[:searchTxt]
        size="size=10&"
        apikey="apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5&"
        latlong="latlong=#{result.ll}&"
        rad = "radius=1&unit=miles"
        url ="https://app.ticketmaster.com/discovery/v2/events.json?"+size+apikey+latlong+rad
        # size=10&apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5&latlong=40.730610,-73.935242&radius=1&unit=miles
        # @response = getApi("http://www.ticketsnow.com/InventoryBrowse/ticket_list.aspx?PID=2073068")
        
        @ticket_list = getApi(url).parsed_response["_embedded"]["events"]

        @eventClassifiaction =getApi('https://app.ticketmaster.com/discovery/v2/classifications.json?apikey=SHcGoYfhDdUgHYG8fhj9GDo0omliNeD5')

        # session[:ticket_list]=@ticket_list
    end


# @ticket_list.parsed_response["_embedded"]["events"].first
end