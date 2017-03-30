class EventsController < ApplicationController
  # before_action :set_event, only: [:show, :edit, :update, :destroy]
def index
  @events = Event.all
end

def show
 @event = Event.find(params[:id])
end


def new
 # @event = Event.find(event_param)
end





end
