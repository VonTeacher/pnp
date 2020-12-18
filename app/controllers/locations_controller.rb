class LocationsController < ApplicationController
  def index
    @locations = if params[:type]
      Location.where(type: params[:type])
    else
      Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
  end
end
