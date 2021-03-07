class BooksController < ApplicationController
  protect_from_forgery_except: [:destroy]
  before_action :set_book, only: [:show, :destroy]

  def show
    @books = Book.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def index
  end

  def new
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to |format|
    format.json { redirect_to "/" }
    format.html { head :no_content }
  end

  private

  def set_book
    @book = Book.find(prams[:id])
  end
end
