class MecanicacomplejosController < ApplicationController
  # GET /mecanicacomplejos
  # GET /mecanicacomplejos.json
  def index
    @mecanicacomplejos = Mecanicacomplejo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mecanicacomplejos }
    end
  end

  # GET /mecanicacomplejos/1
  # GET /mecanicacomplejos/1.json
  def show
    @mecanicacomplejo = Mecanicacomplejo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mecanicacomplejo }
    end
  end

  # GET /mecanicacomplejos/new
  # GET /mecanicacomplejos/new.json
  def new
    @mecanicacomplejo = Mecanicacomplejo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mecanicacomplejo }
    end
  end

  # GET /mecanicacomplejos/1/edit
  def edit
    @mecanicacomplejo = Mecanicacomplejo.find(params[:id])
  end

  # POST /mecanicacomplejos
  # POST /mecanicacomplejos.json
  def create
    @mecanicacomplejo = Mecanicacomplejo.new(params[:mecanicacomplejo])

    respond_to do |format|
      if @mecanicacomplejo.save
        format.html { redirect_to @mecanicacomplejo, notice: 'Mecanicacomplejo was successfully created.' }
        format.json { render json: @mecanicacomplejo, status: :created, location: @mecanicacomplejo }
      else
        format.html { render action: "new" }
        format.json { render json: @mecanicacomplejo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mecanicacomplejos/1
  # PUT /mecanicacomplejos/1.json
  def update
    @mecanicacomplejo = Mecanicacomplejo.find(params[:id])

    respond_to do |format|
      if @mecanicacomplejo.update_attributes(params[:mecanicacomplejo])
        format.html { redirect_to @mecanicacomplejo, notice: 'Mecanicacomplejo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mecanicacomplejo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mecanicacomplejos/1
  # DELETE /mecanicacomplejos/1.json
  def destroy
    @mecanicacomplejo = Mecanicacomplejo.find(params[:id])
    @mecanicacomplejo.destroy

    respond_to do |format|
      format.html { redirect_to mecanicacomplejos_url }
      format.json { head :no_content }
    end
  end
end
