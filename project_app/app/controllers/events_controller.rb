class EventsController < ApplicationController






# @ticket_list.parsed_response["_embedded"]["events"].first

  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @events = Event.all
end

def show
 
 @event = params[:id]
end


def new
 # @event = Event.find(event_param)
end

def renderEvent
  
  @event = params[:id]  
end



end

