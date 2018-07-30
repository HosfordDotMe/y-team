class WelcomeController < ApplicationController

  def index
    @places = Place.all
    @events = Event.all
  end


end
