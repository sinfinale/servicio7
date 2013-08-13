class AgronomiagalerasController < ApplicationController
  # GET /agronomiagaleras
  # GET /agronomiagaleras.json
  def index
    @agronomiagaleras = Agronomiagalera.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agronomiagaleras }
    end
  end

  # GET /agronomiagaleras/1
  # GET /agronomiagaleras/1.json
  def show
    @agronomiagalera = Agronomiagalera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agronomiagalera }
    end
  end

  # GET /agronomiagaleras/new
  # GET /agronomiagaleras/new.json
  def new
    @agronomiagalera = Agronomiagalera.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agronomiagalera }
    end
  end

  # GET /agronomiagaleras/1/edit
  def edit
    @agronomiagalera = Agronomiagalera.find(params[:id])
  end

  # POST /agronomiagaleras
  # POST /agronomiagaleras.json
  def create
    @agronomiagalera = Agronomiagalera.new(params[:agronomiagalera])

    respond_to do |format|
      if @agronomiagalera.save
        format.html { redirect_to @agronomiagalera, notice: 'Agronomiagalera was successfully created.' }
        format.json { render json: @agronomiagalera, status: :created, location: @agronomiagalera }
      else
        format.html { render action: "new" }
        format.json { render json: @agronomiagalera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agronomiagaleras/1
  # PUT /agronomiagaleras/1.json
  def update
    @agronomiagalera = Agronomiagalera.find(params[:id])

    respond_to do |format|
      if @agronomiagalera.update_attributes(params[:agronomiagalera])
        format.html { redirect_to @agronomiagalera, notice: 'Agronomiagalera was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agronomiagalera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agronomiagaleras/1
  # DELETE /agronomiagaleras/1.json
  def destroy
    @agronomiagalera = Agronomiagalera.find(params[:id])
    @agronomiagalera.destroy

    respond_to do |format|
      format.html { redirect_to agronomiagaleras_url }
      format.json { head :no_content }
    end
  end
end
