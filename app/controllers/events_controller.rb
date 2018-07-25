class EventsController < ApplicationController
  
    #list all events
    def index
      @events = Event.all
    end

     #create event 
     def create
        @event = Event.new(event_params)
        @event.save
        redirect_to @event
      end
  
    #show single event
    def show
      @event = Event.find(params[:id])
    end
  
    #create new event from parameters
    private
    def event_params
      params.require(:event).permit(:name, :description, :start_time, :end_time)
    end
  
  end