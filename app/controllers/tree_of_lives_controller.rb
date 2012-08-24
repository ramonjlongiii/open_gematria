class TreeOfLivesController < ApplicationController
  # GET /tree_of_lives
  # GET /tree_of_lives.json
  def index
    @tree_of_lives = TreeOfLife.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tree_of_lives }
    end
  end

  # GET /tree_of_lives/1
  # GET /tree_of_lives/1.json
  def show
    @tree_of_life = TreeOfLife.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tree_of_life }
    end
  end

  # GET /tree_of_lives/new
  # GET /tree_of_lives/new.json
  def new
    @tree_of_life = TreeOfLife.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tree_of_life }
    end
  end

  # GET /tree_of_lives/1/edit
  def edit
    @tree_of_life = TreeOfLife.find(params[:id])
  end

  # POST /tree_of_lives
  # POST /tree_of_lives.json
  def create
    @tree_of_life = TreeOfLife.new(params[:tree_of_life])

    respond_to do |format|
      if @tree_of_life.save
        format.html { redirect_to @tree_of_life, notice: 'Tree of life was successfully created.' }
        format.json { render json: @tree_of_life, status: :created, location: @tree_of_life }
      else
        format.html { render action: "new" }
        format.json { render json: @tree_of_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tree_of_lives/1
  # PUT /tree_of_lives/1.json
  def update
    @tree_of_life = TreeOfLife.find(params[:id])

    respond_to do |format|
      if @tree_of_life.update_attributes(params[:tree_of_life])
        format.html { redirect_to @tree_of_life, notice: 'Tree of life was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tree_of_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tree_of_lives/1
  # DELETE /tree_of_lives/1.json
  def destroy
    @tree_of_life = TreeOfLife.find(params[:id])
    @tree_of_life.destroy

    respond_to do |format|
      format.html { redirect_to tree_of_lives_url }
      format.json { head :no_content }
    end
  end
end
