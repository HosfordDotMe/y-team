class WelcomeController < ApplicationController
  def index
    @places = Place.all
  end
end
