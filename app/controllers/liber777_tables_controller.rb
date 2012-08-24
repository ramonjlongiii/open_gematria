class Liber777TablesController < ApplicationController
  # GET /liber777_tables
  # GET /liber777_tables.json
  def index
    @liber777_tables = Liber777Table.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @liber777_tables }
    end
  end

  # GET /liber777_tables/1
  # GET /liber777_tables/1.json
  def show
    @liber777_table = Liber777Table.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @liber777_table }
    end
  end

  # GET /liber777_tables/new
  # GET /liber777_tables/new.json
  def new
    @liber777_table = Liber777Table.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @liber777_table }
    end
  end

  # GET /liber777_tables/1/edit
  def edit
    @liber777_table = Liber777Table.find(params[:id])
  end

  # POST /liber777_tables
  # POST /liber777_tables.json
  def create
    @liber777_table = Liber777Table.new(params[:liber777_table])

    respond_to do |format|
      if @liber777_table.save
        format.html { redirect_to @liber777_table, notice: 'Liber777 table was successfully created.' }
        format.json { render json: @liber777_table, status: :created, location: @liber777_table }
      else
        format.html { render action: "new" }
        format.json { render json: @liber777_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /liber777_tables/1
  # PUT /liber777_tables/1.json
  def update
    @liber777_table = Liber777Table.find(params[:id])

    respond_to do |format|
      if @liber777_table.update_attributes(params[:liber777_table])
        format.html { redirect_to @liber777_table, notice: 'Liber777 table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @liber777_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liber777_tables/1
  # DELETE /liber777_tables/1.json
  def destroy
    @liber777_table = Liber777Table.find(params[:id])
    @liber777_table.destroy

    respond_to do |format|
      format.html { redirect_to liber777_tables_url }
      format.json { head :no_content }
    end
  end
end
