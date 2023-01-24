class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show edit update destroy ]

  def index
   @locations = Location.all
  end

  def show
  end

  def edit
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
     if @location.save
       redirect_to @location
       flash[:notice] =  "Location was successfully created."
     else
      render 'new' , status: :unprocessable_entity
     end
  end

  def update
    if @location.update(location_params)
      redirect_to @location
      flash[:notice] = "Location was successfully updated."
     else
     render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
    flash[:notice] = "Location deleted successfully"
    redirect_to locations_path
  end

  private
     def set_location
       @location = Location.find(params[:id])
     end

     def Location_params
       params.require(:location).permit(:name,:region_id,:library_id)
     end
end
