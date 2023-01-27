class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  def index
   @books = Book.all
  end

  def show
  end

  def edit
  end

  def new
    @book = Book.new
    if params.include?(:library_id)
      @library = Library.find(params[:library_id])
    else
      @library = Library.all
    end
    @author = Author.all
  end

   def create
     @book = Book.new(book_params)
       if @book.save
          redirect_to @book
          flash[:notice] = "Book was successfully created."
        else
         render 'new', status: :unprocessable_entity
       end
   end

  def update
    if @book.update(book_params)
      redirect_to @book
      flash[:notice] = "Book was successfully updated."
     else
     render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book deleted successfully"
    redirect_to books_path
  end

  private
     def set_book
       @book = Book.find(params[:id])
     end

     def book_params
       params.require(:book).permit(:title, :description, :pages, :launchdate,:library_id, :author_id)
     end
end
