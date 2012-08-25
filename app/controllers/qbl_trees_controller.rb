class QblTreesController < ApplicationController
  # GET /qbl_trees
  # GET /qbl_trees.json
  def index
    @qbl_trees = QblTree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qbl_trees }
    end
  end

  # GET /qbl_trees/1
  # GET /qbl_trees/1.json
  def show
    @qbl_tree = QblTree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qbl_tree }
    end
  end

  # GET /qbl_trees/new
  # GET /qbl_trees/new.json
  def new
    @qbl_tree = QblTree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qbl_tree }
    end
  end

  # GET /qbl_trees/1/edit
  def edit
    @qbl_tree = QblTree.find(params[:id])
  end

  # POST /qbl_trees
  # POST /qbl_trees.json
  def create
    @qbl_tree = QblTree.new(params[:qbl_tree])

    respond_to do |format|
      if @qbl_tree.save
        format.html { redirect_to @qbl_tree, notice: 'Qbl tree was successfully created.' }
        format.json { render json: @qbl_tree, status: :created, location: @qbl_tree }
      else
        format.html { render action: "new" }
        format.json { render json: @qbl_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qbl_trees/1
  # PUT /qbl_trees/1.json
  def update
    @qbl_tree = QblTree.find(params[:id])

    respond_to do |format|
      if @qbl_tree.update_attributes(params[:qbl_tree])
        format.html { redirect_to @qbl_tree, notice: 'Qbl tree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qbl_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qbl_trees/1
  # DELETE /qbl_trees/1.json
  def destroy
    @qbl_tree = QblTree.find(params[:id])
    @qbl_tree.destroy

    respond_to do |format|
      format.html { redirect_to qbl_trees_url }
      format.json { head :no_content }
    end
  end
end
