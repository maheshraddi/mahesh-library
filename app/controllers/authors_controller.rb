class AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show edit update destroy ]

  def index
   @authors = Author.all
  end

  def show
  end

  def edit
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
     if @author.save
       redirect_to @author
       flash[:notice] =  "Author was successfully created."
     else
      render 'new' , status: :unprocessable_entity
     end
  end

  def update
    if @author.update(author_params)
      redirect_to @author
      flash[:notice] = "Author was successfully updated."
     else
     render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @author.destroy
    flash[:notice] = "Author deleted successfully"
    redirect_to authors_path
  end

  private
     def set_author
       @author = Author.find(params[:id])
     end

     def author_params
       params.require(:author).permit(:name, :experience,:gender)
     end
end
