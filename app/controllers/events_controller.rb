class EventsController < ApplicationController
  before_action :require_user, only: [:new, :create]

  #list all events
  def index
    @events = Event.all
  end

  def new
    @places = Place.all
  end



  #create event
  def create
    @event = Event.new(event_params)
    @event.user_id = session[:user_id]
    @event.enabled = 1
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
    params.require(:event).permit(:name, :place_id, :description, :start_time, :end_time)
  end

end
