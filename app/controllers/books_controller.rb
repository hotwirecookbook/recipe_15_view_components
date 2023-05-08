class BooksController < ApplicationController
  def index
    @completed_books = Book.completed
    @incomplete_books = Book.incomplete
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update(book_params)
        format.turbo_stream
      end
    end
  end

  private

  def book_params
    params.require(:book).permit(:completed)
  end
end