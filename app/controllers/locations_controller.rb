class LocationsController < ApplicationController
  def index
    @page_title = params[:type] ? params[:type].pluralize : "Locations"

    if params[:type]
      @locations = Location.where(type: params[:type])
    else
      @locations = Location.all
    end
  end

  def show
    @location = Location.friendly.find(params[:id])
  end

  def new
    @page_title = "Add Location"
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to @location
    else
      render "new"
    end
  end

  private

  def location_params
    params.require(:location).permit(:type, :name, :description, :visited)
  end
end
