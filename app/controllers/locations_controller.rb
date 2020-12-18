class LocationsController < ApplicationController
  def index
    @page_title = params[:type] ? params[:type].pluralize : "Locations"
    @locations = if params[:type]
      Location.where(type: params[:type])
    else
      Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @page_title = "Add Location"
    @location = Location.new
  end
end
