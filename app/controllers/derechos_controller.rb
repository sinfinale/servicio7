class DerechosController < ApplicationController
  # GET /derechos
  # GET /derechos.json
  def index
    @derechos = Derecho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @derechos }
    end
  end

  # GET /derechos/1
  # GET /derechos/1.json
  def show
    @derecho = Derecho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @derecho }
    end
  end

  # GET /derechos/new
  # GET /derechos/new.json
  def new
    @derecho = Derecho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @derecho }
    end
  end

  # GET /derechos/1/edit
  def edit
    @derecho = Derecho.find(params[:id])
  end

  # POST /derechos
  # POST /derechos.json
  def create
    @derecho = Derecho.new(params[:derecho])

    respond_to do |format|
      if @derecho.save
        format.html { redirect_to @derecho, notice: 'Derecho was successfully created.' }
        format.json { render json: @derecho, status: :created, location: @derecho }
      else
        format.html { render action: "new" }
        format.json { render json: @derecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /derechos/1
  # PUT /derechos/1.json
  def update
    @derecho = Derecho.find(params[:id])

    respond_to do |format|
      if @derecho.update_attributes(params[:derecho])
        format.html { redirect_to @derecho, notice: 'Derecho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @derecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derechos/1
  # DELETE /derechos/1.json
  def destroy
    @derecho = Derecho.find(params[:id])
    @derecho.destroy

    respond_to do |format|
      format.html { redirect_to derechos_url }
      format.json { head :no_content }
    end
  end
end
