class BooksController < ApplicationController
  def new
      @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :index
    end
    flash[:success] = 'successfully'
  end
    def index
      @books = Book.all
      @book = Book.new
    end
    def show
      @book = Book.find(params[:id])
      @new_book = Book.new
    end
    def edit
        @book = Book.find(params[:id])
        # flash[:success] = 'successfully'
    end
    def update
        book = Book.find(params[:id])
        if book.update(book_params)
           redirect_to book_path(book.id)
           flash[:success] = 'successfully'
        else
          render :edit
        end
    end
    def destroy
        book = Book.find(params[:id])
        book.destroy
        flash[:success] = 'successfully'
        redirect_to books_path
    end

    private

    def book_params
        params.require(:book).permit(:title, :body)
    end

end
