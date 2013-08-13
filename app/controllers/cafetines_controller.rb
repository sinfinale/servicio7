class CafetinesController < ApplicationController
  # GET /cafetines
  # GET /cafetines.json
  def index
    @cafetines = Cafetine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cafetines }
    end
  end

  # GET /cafetines/1
  # GET /cafetines/1.json
  def show
    @cafetine = Cafetine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cafetine }
    end
  end

  # GET /cafetines/new
  # GET /cafetines/new.json
  def new
    @cafetine = Cafetine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cafetine }
    end
  end

  # GET /cafetines/1/edit
  def edit
    @cafetine = Cafetine.find(params[:id])
  end

  # POST /cafetines
  # POST /cafetines.json
  def create
    @cafetine = Cafetine.new(params[:cafetine])

    respond_to do |format|
      if @cafetine.save
        format.html { redirect_to @cafetine, notice: 'Cafetine was successfully created.' }
        format.json { render json: @cafetine, status: :created, location: @cafetine }
      else
        format.html { render action: "new" }
        format.json { render json: @cafetine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cafetines/1
  # PUT /cafetines/1.json
  def update
    @cafetine = Cafetine.find(params[:id])

    respond_to do |format|
      if @cafetine.update_attributes(params[:cafetine])
        format.html { redirect_to @cafetine, notice: 'Cafetine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cafetine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafetines/1
  # DELETE /cafetines/1.json
  def destroy
    @cafetine = Cafetine.find(params[:id])
    @cafetine.destroy

    respond_to do |format|
      format.html { redirect_to cafetines_url }
      format.json { head :no_content }
    end
  end
end
