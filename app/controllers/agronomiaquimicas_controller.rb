class AgronomiaquimicasController < ApplicationController
  # GET /agronomiaquimicas
  # GET /agronomiaquimicas.json
  def index
    @agronomiaquimicas = Agronomiaquimica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agronomiaquimicas }
    end
  end

  # GET /agronomiaquimicas/1
  # GET /agronomiaquimicas/1.json
  def show
    @agronomiaquimica = Agronomiaquimica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agronomiaquimica }
    end
  end

  # GET /agronomiaquimicas/new
  # GET /agronomiaquimicas/new.json
  def new
    @agronomiaquimica = Agronomiaquimica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agronomiaquimica }
    end
  end

  # GET /agronomiaquimicas/1/edit
  def edit
    @agronomiaquimica = Agronomiaquimica.find(params[:id])
  end

  # POST /agronomiaquimicas
  # POST /agronomiaquimicas.json
  def create
    @agronomiaquimica = Agronomiaquimica.new(params[:agronomiaquimica])

    respond_to do |format|
      if @agronomiaquimica.save
        format.html { redirect_to @agronomiaquimica, notice: 'Agronomiaquimica was successfully created.' }
        format.json { render json: @agronomiaquimica, status: :created, location: @agronomiaquimica }
      else
        format.html { render action: "new" }
        format.json { render json: @agronomiaquimica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agronomiaquimicas/1
  # PUT /agronomiaquimicas/1.json
  def update
    @agronomiaquimica = Agronomiaquimica.find(params[:id])

    respond_to do |format|
      if @agronomiaquimica.update_attributes(params[:agronomiaquimica])
        format.html { redirect_to @agronomiaquimica, notice: 'Agronomiaquimica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agronomiaquimica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agronomiaquimicas/1
  # DELETE /agronomiaquimicas/1.json
  def destroy
    @agronomiaquimica = Agronomiaquimica.find(params[:id])
    @agronomiaquimica.destroy

    respond_to do |format|
      format.html { redirect_to agronomiaquimicas_url }
      format.json { head :no_content }
    end
  end
end
