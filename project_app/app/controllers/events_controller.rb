class EventsController < ApplicationController

<<<<<<< HEAD

# @ticket_list.parsed_response["_embedded"]["events"].first

  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @events = Event.all
end

def show
 @event = Event.find(params[:id])
end
=======
# @ticket_list.parsed_response["_embedded"]["events"].first

  # before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
      @events = Event.all
  end
>>>>>>> 165d57c043c2eecaf8f5a587b7096a1496259c7a

  def show
    @event = Event.find(params[:id])
  end

<<<<<<< HEAD
def new
 @event = Event.create(params[:id])
end

def update
 @event = Event.find(params[:id])
end

def renderEvent
  byebug
  @event = params[:id]
end
=======
>>>>>>> 165d57c043c2eecaf8f5a587b7096a1496259c7a

  def new
  # @event = Event.find(event_param)
  end

  def renderEvent
    byebug
    @event = params[:id]
  end

end

