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
    response = Net::HTTP.get(uri)
    places = JSON.parse(response)

    places_restaurants = []
    places["results"].each do |result|
      places_restaurants.push(result["name"])
    end
    @places_restaurants = places_restaurants


    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + lat + "," + lng + "&radius=1500&type=convenience_store&keyword=&key=" + Rails.application.credentials.gmaps_api_key
    uri = URI(url)
    response = Net::HTTP.get(uri)
    places = JSON.parse(response)

    places_convenience = []
    places["results"].each do |result|
      places_convenience.push(result["name"])
    end
    @places_convenience = places_convenience

    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + lat + "," + lng + "&radius=1500&type=liquor_store&keyword=&key=" + Rails.application.credentials.gmaps_api_key
    uri = URI(url)
    response = Net::HTTP.get(uri)
    places = JSON.parse(response)

    places_liquor = []
    places["results"].each do |result|
      places_liquor.push(result["name"])
    end
    @places_liquor = places_liquor

  end
end
