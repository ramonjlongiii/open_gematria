class HolyBooksController < ApplicationController
  # GET /holy_books
  # GET /holy_books.json
  def index
    @holy_books = HolyBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @holy_books }
    end
  end

  # GET /holy_books/1
  # GET /holy_books/1.json
  def show
    @holy_book = HolyBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @holy_book }
    end
  end

  # GET /holy_books/new
  # GET /holy_books/new.json
  def new
    @holy_book = HolyBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @holy_book }
    end
  end

  # GET /holy_books/1/edit
  def edit
    @holy_book = HolyBook.find(params[:id])
  end

  # POST /holy_books
  # POST /holy_books.json
  def create
    @holy_book = HolyBook.new(params[:holy_book])

    respond_to do |format|
      if @holy_book.save
        format.html { redirect_to @holy_book, notice: 'Holy book was successfully created.' }
        format.json { render json: @holy_book, status: :created, location: @holy_book }
      else
        format.html { render action: "new" }
        format.json { render json: @holy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /holy_books/1
  # PUT /holy_books/1.json
  def update
    @holy_book = HolyBook.find(params[:id])

    respond_to do |format|
      if @holy_book.update_attributes(params[:holy_book])
        format.html { redirect_to @holy_book, notice: 'Holy book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @holy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holy_books/1
  # DELETE /holy_books/1.json
  def destroy
    @holy_book = HolyBook.find(params[:id])
    @holy_book.destroy

    respond_to do |format|
      format.html { redirect_to holy_books_url }
      format.json { head :no_content }
    end
  end
end
