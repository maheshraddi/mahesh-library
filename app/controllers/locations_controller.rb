class LocationsController < ApplicationController
  before_action :set_location, only: %i[show edit update destroy]

  def show
  end

  def index
    @locations = Location.all
    @region = Region.find(params[:region_id])
  end

  def edit
  end

  def new
    @location = Location.new
    @region = Region.find(params[:region_id])
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:notice] = "Location added successfully."
      redirect_to @location
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    if @location.update(location_params)
      flash[:notice] = "Location updated successfully."
      redirect_to @location
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @region = @location.region
    @location.destroy
    flash[:notice] = "Location deleted successfully."
    redirect_to locations_path(region_id: @region.id)
  end
  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :region_id)
  end
end
