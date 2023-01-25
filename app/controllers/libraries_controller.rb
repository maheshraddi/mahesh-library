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
  @library = Library.new
 end

 def create
  @library = Library.new(library_params)
  if @library.save
   redirect_to @library
   flash[:notice] = "Library was successfully created."
  else
   render 'new' , status: :unprocessable_entity
  end
 end

 def update
  if @library.update(library_params)
   redirect_to @library
   flash[:notice] = "Library was successfully updated."
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
    params.require(:library).permit(:name, :location_id)
  end
end
