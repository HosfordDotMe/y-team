class PlacesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :require_user, only: [:show]
  #list all places
  def index
    @places = Place.all
  end

  def new
    @categories = Category.where(cat_type: 'Place')


   @place = Place.new
   puts params[:place1]
   puts params[:place2]
   puts params[:place3]
   places_list = []
   places_list.push(params[:place1])
   places_list.push(params[:place2])
   places_list.push(params[:place3])
   @places_list = places_list
   puts @places_list
  end

  #create place
  def create
    @place = Place.new(place_params)
    @place.save
    redirect_to @place
  end

  #show single
  def show
    @place_comments = PlaceComment.all
    @place = Place.find(params[:id])
    @category = Category.find(@place.cat_id)
    @pid = @place.id
  end

  #creates new place. no error checking yet.
  private
  def place_params
    params.require(:place).permit(:name, :lat, :lng, :image_uri, :description, :cat_id, :address)
  end
end
