class OdontologiaimprentaController < ApplicationController
  # GET /odontologiaimprenta
  # GET /odontologiaimprenta.json
  def index
    @odontologiaimprenta = Odontologiaimprentum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odontologiaimprenta }
    end
  end

  # GET /odontologiaimprenta/1
  # GET /odontologiaimprenta/1.json
  def show
    @odontologiaimprentum = Odontologiaimprentum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odontologiaimprentum }
    end
  end

  # GET /odontologiaimprenta/new
  # GET /odontologiaimprenta/new.json
  def new
    @odontologiaimprentum = Odontologiaimprentum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odontologiaimprentum }
    end
  end

  # GET /odontologiaimprenta/1/edit
  def edit
    @odontologiaimprentum = Odontologiaimprentum.find(params[:id])
  end

  # POST /odontologiaimprenta
  # POST /odontologiaimprenta.json
  def create
    @odontologiaimprentum = Odontologiaimprentum.new(params[:odontologiaimprentum])

    respond_to do |format|
      if @odontologiaimprentum.save
        format.html { redirect_to @odontologiaimprentum, notice: 'Odontologiaimprentum was successfully created.' }
        format.json { render json: @odontologiaimprentum, status: :created, location: @odontologiaimprentum }
      else
        format.html { render action: "new" }
        format.json { render json: @odontologiaimprentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odontologiaimprenta/1
  # PUT /odontologiaimprenta/1.json
  def update
    @odontologiaimprentum = Odontologiaimprentum.find(params[:id])

    respond_to do |format|
      if @odontologiaimprentum.update_attributes(params[:odontologiaimprentum])
        format.html { redirect_to @odontologiaimprentum, notice: 'Odontologiaimprentum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odontologiaimprentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odontologiaimprenta/1
  # DELETE /odontologiaimprenta/1.json
  def destroy
    @odontologiaimprentum = Odontologiaimprentum.find(params[:id])
    @odontologiaimprentum.destroy

    respond_to do |format|
      format.html { redirect_to odontologiaimprenta_url }
      format.json { head :no_content }
    end
  end
end
