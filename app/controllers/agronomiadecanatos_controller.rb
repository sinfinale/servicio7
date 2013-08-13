class AgronomiadecanatosController < ApplicationController
  # GET /agronomiadecanatos
  # GET /agronomiadecanatos.json
  def index
    @agronomiadecanatos = Agronomiadecanato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agronomiadecanatos }
    end
  end

  # GET /agronomiadecanatos/1
  # GET /agronomiadecanatos/1.json
  def show
    @agronomiadecanato = Agronomiadecanato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agronomiadecanato }
    end
  end

  # GET /agronomiadecanatos/new
  # GET /agronomiadecanatos/new.json
  def new
    @agronomiadecanato = Agronomiadecanato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agronomiadecanato }
    end
  end

  # GET /agronomiadecanatos/1/edit
  def edit
    @agronomiadecanato = Agronomiadecanato.find(params[:id])
  end

  # POST /agronomiadecanatos
  # POST /agronomiadecanatos.json
  def create
    @agronomiadecanato = Agronomiadecanato.new(params[:agronomiadecanato])

    respond_to do |format|
      if @agronomiadecanato.save
        format.html { redirect_to @agronomiadecanato, notice: 'Agronomiadecanato was successfully created.' }
        format.json { render json: @agronomiadecanato, status: :created, location: @agronomiadecanato }
      else
        format.html { render action: "new" }
        format.json { render json: @agronomiadecanato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agronomiadecanatos/1
  # PUT /agronomiadecanatos/1.json
  def update
    @agronomiadecanato = Agronomiadecanato.find(params[:id])

    respond_to do |format|
      if @agronomiadecanato.update_attributes(params[:agronomiadecanato])
        format.html { redirect_to @agronomiadecanato, notice: 'Agronomiadecanato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agronomiadecanato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agronomiadecanatos/1
  # DELETE /agronomiadecanatos/1.json
  def destroy
    @agronomiadecanato = Agronomiadecanato.find(params[:id])
    @agronomiadecanato.destroy

    respond_to do |format|
      format.html { redirect_to agronomiadecanatos_url }
      format.json { head :no_content }
    end
  end
end
