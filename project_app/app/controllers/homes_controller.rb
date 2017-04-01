class HomesController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index

end

#display select event deatils
def show
  if params[:id]
    url="https://app.ticketmaster.com/discovery/v2/events/#{params[:id]}.json?#{apikey}"
  else
     url="https://app.ticketmaster.com/discovery/v2/events/#{session[:eventId]}.json?#{apikey}"
  end
    session[:activeEventSearch] = nil
     @event= getApi(url).parsed_response
end


def new

end


###### Render Search Result
 def search
        result = Geokit::Geocoders::GoogleGeocoder.geocode params[:searchTxt] #Get longitude and latitude of user address
        size="size=20&"
        session[:latlong]="&latlong=#{result.ll}&"
        session[:rad] = "radius=1&unit=miles"

        session[:initialUrl] ="https://app.ticketmaster.com/discovery/v2/events.json?"+size+apikey+
                              session[:latlong]+session[:rad]

         ticket_list= getApi(session[:initialUrl]).parsed_response["_embedded"]["events"]
        @eventClassifiaction = ticket_list.uniq { |e| e["classifications"][0]["segment"]["name"] }

        render :index
    end

###### Search Event by category
  def searchByClass
    session[:activeEventSearch] = nil
         @ticket_list= getApi(session[:initialUrl]).
          parsed_response["_embedded"]["events"].each  do |e|
            e["classifications"][0]["segment"]["name"] === params[:id]
          end

      render :index

  end


def saveEvent
    url="https://app.ticketmaster.com/discovery/v2/events/#{session[:eventId]}.json?#{apikey}"
     event= getApi(url).parsed_response
     session[:activeEventSearch]= session[:eventId]
    if current_user
        address = event["_embedded"]["venues"][0]["address"]["line1"]
        postalcode = event["_embedded"]["venues"][0]["postalcode"]
        city = event["_embedded"]["venues"][0]["city"]["name"]
        state = event["_embedded"]["venues"][0]["state"]["name"]
        country = event["_embedded"]["venues"][0]["country"]["name"]

        newEvent = Event.new()
        newEvent.user_id = current_user.id
        newEvent.name = event["name"]
        newEvent.event_type = event["classifications"][0]["genre"]["name"]
        newEvent.category = event["classifications"][0]["segment"]["name"]
        newEvent.event_date= event["dates"]["start"]["localDate"]
        newEvent.image_url = event["images"][1]["url"]
        newEvent.address = "#{address},#{postalcode},#{city},#{state},#{country}"
        newEvent.event_url = event["url"]
        if Event.where({user_id: "#{current_user.id}" , event_url:"#{event["url"]}"})
            flash[:notice] = "This event is saved already!"
           redirect_to event_details_path(session[:eventId])
        else
            if newEvent.save
              flash[:notice] = "This event is saved successfully!"
              redirect_to event_details_path(session[:eventId])
          else
              redirect_to event_details_path(session[:eventId])
          end
        end
      
    else
      redirect_to new_user_session_path
    end
end


end
