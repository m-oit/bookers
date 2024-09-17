class BooksController < ApplicationController
  def new
   
  end

  def create
  @book = Book.new(book_params)
  if @book.save
    flash[:notice]= "Book was successfully created."
    redirect_to book_path(@book.id)
  else
    flash.now[:alert]= "#{ @book.errors.count } errors prohibited this book from being saved:"
    render :new
  end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  book = Book.find(params[:id])
  book.update(book_params)
  redirect_to book_path(book.id)
  end
  
  def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
  end
  

  private
  def book_params
    params.require(:book).permit(:title, :body, :author)
  end
  
end