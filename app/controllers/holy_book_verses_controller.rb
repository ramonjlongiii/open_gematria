class HolyBookVersesController < ApplicationController
  # GET /holy_book_verses
  # GET /holy_book_verses.json
  def index
    @holy_book_verses = HolyBookVerse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @holy_book_verses }
    end
  end

  # GET /holy_book_verses/1
  # GET /holy_book_verses/1.json
  def show
    @holy_book_verse = HolyBookVerse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @holy_book_verse }
    end
  end

  # GET /holy_book_verses/new
  # GET /holy_book_verses/new.json
  def new
    @holy_book_verse = HolyBookVerse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @holy_book_verse }
    end
  end

  # GET /holy_book_verses/1/edit
  def edit
    @holy_book_verse = HolyBookVerse.find(params[:id])
  end

  # POST /holy_book_verses
  # POST /holy_book_verses.json
  def create
    @holy_book_verse = HolyBookVerse.new(params[:holy_book_verse])

    respond_to do |format|
      if @holy_book_verse.save
        format.html { redirect_to @holy_book_verse, notice: 'Holy book verse was successfully created.' }
        format.json { render json: @holy_book_verse, status: :created, location: @holy_book_verse }
      else
        format.html { render action: "new" }
        format.json { render json: @holy_book_verse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /holy_book_verses/1
  # PUT /holy_book_verses/1.json
  def update
    @holy_book_verse = HolyBookVerse.find(params[:id])

    respond_to do |format|
      if @holy_book_verse.update_attributes(params[:holy_book_verse])
        format.html { redirect_to @holy_book_verse, notice: 'Holy book verse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @holy_book_verse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holy_book_verses/1
  # DELETE /holy_book_verses/1.json
  def destroy
    @holy_book_verse = HolyBookVerse.find(params[:id])
    @holy_book_verse.destroy

    respond_to do |format|
      format.html { redirect_to holy_book_verses_url }
      format.json { head :no_content }
    end
  end
end
