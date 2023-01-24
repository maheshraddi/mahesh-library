class RegionsController < ApplicationController
  before_action :set_region, only: %i[show edit update destroy]

  def show
  end

  def index
    @regions = Region.all
  end

  def edit
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      flash[:notice] = "Region added successfully."
      redirect_to regions_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    if @region.update(region_params)
      flash[:notice] = "Region updated successfully."
      redirect_to @region
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @region.destroy
    flash[:notice] = " Region deleted successfully."
    redirect_to regions_path
  end

  private

  def set_region
    @region = Region.find(params[:id])
  end

  def region_params
    params.require(:region).permit(:name, :company_id)
  end
end
