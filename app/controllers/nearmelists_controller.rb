class NearmelistsController < ApplicationController

  def index
    # binding.pry
    lat = params[:lat]
    lng = params[:lng]

    puts lat
    puts lng
    require 'net/http'
    require 'json'
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + lat + "," + lng + "&radius=1500&type=restaurant&keyword=food&key=" + Rails.application.credentials.gmaps_api_key
    uri = URI(url)
    responce = Net::HTTP.get(uri)
    places = JSON.parse(responce)

    places_list = []
    places["results"].each do |result|
      places_list.push(result["name"])
    end
    @places_list = places_list
  end
end
