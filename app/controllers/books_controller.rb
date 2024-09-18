class BooksController < ApplicationController
  def new
   
  end

  def create
   @book = Book.new(book_params)
   if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to @book
   else
     @books = Book.all
    render :index
   end
  end


  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    if flash[:notice]
    @show_notice = flash[:notice]
    flash.delete(:notice)
  end
 end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  book = Book.find(params[:id])
  book.update(book_params)
  flash[:notice] = "Book was successfully updated."
  redirect_to book_path(book.id)
  end
  
  def destroy
  book = Book.find(params[:id])
  book.destroy
  flash[:notice] = "Book was successfully destroyed."
  redirect_to '/books'
  end
  

  private
  def book_params
    params.require(:book).permit(:title, :body, :author)
  end
  end