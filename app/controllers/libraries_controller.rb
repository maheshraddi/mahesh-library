class LibrariesController < ApplicationController

 before_action :set_library, only: %i[ show edit update destroy ]

 def index
  @libraries = Library.all
 end

 end

 def show
 end

 def edit
 end

 def new
     @library = Library.new(library_params)
    @company = Company.find(params[:format])
    unless params[:library] == nil
      @region = Array.new
      params[:library][:region_id].each do |reg|
        reg.to_i
        @region << Region.find(reg)
      end
    end
  end

 def create
  @library = Library.new(library_params)
  if @library.save
   flash[:notice] = "Library was successfully created."
   redirect_to @library
  else
   render 'new' , status: :unprocessable_entity
  end
 end

 def update
  if @library.update(library_params)
  flash[:notice] = "Library was successfully updated."
   redirect_to @library
  else
   render 'edit', status: :unprocessable_entity
  end

 def destroy
  @library.destroy
  flash[:notice] = "Library deleted successfully"
  redirect_to libraries_path
 end

 

 private
  def set_library
    @library = Library.find(params[:id])
  end
  

  

  def library_params
    params.require(:library).permit(:name, :location_id,:region_id,:company_id)
  end


  
  end
