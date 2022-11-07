class SearchController < ApplicationController 
  def index
    station = NrelFacade.nearest_fuel_station(params[:location])
    directions = MapquestFacade.directions(params[:location], station)
    require 'pry'; binding.pry
  end
end