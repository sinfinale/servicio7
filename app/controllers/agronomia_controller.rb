class AgronomiaController < ApplicationController
  # GET /agronomia
  # GET /agronomia.json
  def index
    @agronomia = Agronomium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agronomia }
    end
  end

  # GET /agronomia/1
  # GET /agronomia/1.json
  def show
    @agronomium = Agronomium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agronomium }
    end
  end

  # GET /agronomia/new
  # GET /agronomia/new.json
  def new
    @agronomium = Agronomium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agronomium }
    end
  end

  # GET /agronomia/1/edit
  def edit
    @agronomium = Agronomium.find(params[:id])
  end

  # POST /agronomia
  # POST /agronomia.json
  def create
    @agronomium = Agronomium.new(params[:agronomium])

    respond_to do |format|
      if @agronomium.save
        format.html { redirect_to @agronomium, notice: 'Agronomium was successfully created.' }
        format.json { render json: @agronomium, status: :created, location: @agronomium }
      else
        format.html { render action: "new" }
        format.json { render json: @agronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agronomia/1
  # PUT /agronomia/1.json
  def update
    @agronomium = Agronomium.find(params[:id])

    respond_to do |format|
      if @agronomium.update_attributes(params[:agronomium])
        format.html { redirect_to @agronomium, notice: 'Agronomium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agronomia/1
  # DELETE /agronomia/1.json
  def destroy
    @agronomium = Agronomium.find(params[:id])
    @agronomium.destroy

    respond_to do |format|
      format.html { redirect_to agronomia_url }
      format.json { head :no_content }
    end
  end
end
