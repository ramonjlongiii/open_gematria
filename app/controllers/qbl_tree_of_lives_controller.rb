class QblTreeOfLivesController < ApplicationController
  # GET /qbl_tree_of_lives
  # GET /qbl_tree_of_lives.json
  def index
    @qbl_tree_of_lives = QblTreeOfLife.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qbl_tree_of_lives }
    end
  end

  # GET /qbl_tree_of_lives/1
  # GET /qbl_tree_of_lives/1.json
  def show
    @qbl_tree_of_life = QblTreeOfLife.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qbl_tree_of_life }
    end
  end

  # GET /qbl_tree_of_lives/new
  # GET /qbl_tree_of_lives/new.json
  def new
    @qbl_tree_of_life = QblTreeOfLife.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qbl_tree_of_life }
    end
  end

  # GET /qbl_tree_of_lives/1/edit
  def edit
    @qbl_tree_of_life = QblTreeOfLife.find(params[:id])
  end

  # POST /qbl_tree_of_lives
  # POST /qbl_tree_of_lives.json
  def create
    @qbl_tree_of_life = QblTreeOfLife.new(params[:qbl_tree_of_life])

    respond_to do |format|
      if @qbl_tree_of_life.save
        format.html { redirect_to @qbl_tree_of_life, notice: 'Qbl tree of life was successfully created.' }
        format.json { render json: @qbl_tree_of_life, status: :created, location: @qbl_tree_of_life }
      else
        format.html { render action: "new" }
        format.json { render json: @qbl_tree_of_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qbl_tree_of_lives/1
  # PUT /qbl_tree_of_lives/1.json
  def update
    @qbl_tree_of_life = QblTreeOfLife.find(params[:id])

    respond_to do |format|
      if @qbl_tree_of_life.update_attributes(params[:qbl_tree_of_life])
        format.html { redirect_to @qbl_tree_of_life, notice: 'Qbl tree of life was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qbl_tree_of_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qbl_tree_of_lives/1
  # DELETE /qbl_tree_of_lives/1.json
  def destroy
    @qbl_tree_of_life = QblTreeOfLife.find(params[:id])
    @qbl_tree_of_life.destroy

    respond_to do |format|
      format.html { redirect_to qbl_tree_of_lives_url }
      format.json { head :no_content }
    end
  end
end
