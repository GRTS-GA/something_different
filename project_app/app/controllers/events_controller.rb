class EventsController < ApplicationController

# @ticket_list.parsed_response["_embedded"]["events"].first

  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @events = Event.all
  @comment = Comment.new
end

def show
 @event = Event.find(params[:id])
 @comment = Comment.new
end

def new

 @event = Event.new()
end

def create

 @event = Event.new(event_params)

 @event.user_id = current_user.id
  if @event.save
    redirect_to @event
  else
    render :new
  end
end

def edit
    @event = Event.find(params[:id])
    render :edit
end

def update
 @event = Event.find(params[:id])
 @event.user_id = current_user.id

 if @event.update(event_params)
  redirect_to @event
else
  render :edit
end
end

def renderEvent
  @event = params[:id]
end

def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path(@event.user)
end

def event_params
      params.require(:event).permit(:user_id, :name, :event_type, :category, :event_date, :image, :image_url, :remote_image_url, :event_url, :address, :price)
  end
end

