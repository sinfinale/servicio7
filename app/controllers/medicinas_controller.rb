class MedicinasController < ApplicationController
  # GET /medicinas
  # GET /medicinas.json
  def index
    @medicinas = Medicina.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medicinas }
    end
  end

  # GET /medicinas/1
  # GET /medicinas/1.json
  def show
    @medicina = Medicina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medicina }
    end
  end

  # GET /medicinas/new
  # GET /medicinas/new.json
  def new
    @medicina = Medicina.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medicina }
    end
  end

  # GET /medicinas/1/edit
  def edit
    @medicina = Medicina.find(params[:id])
  end

  # POST /medicinas
  # POST /medicinas.json
  def create
    @medicina = Medicina.new(params[:medicina])

    respond_to do |format|
      if @medicina.save
        format.html { redirect_to @medicina, notice: 'Medicina was successfully created.' }
        format.json { render json: @medicina, status: :created, location: @medicina }
      else
        format.html { render action: "new" }
        format.json { render json: @medicina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medicinas/1
  # PUT /medicinas/1.json
  def update
    @medicina = Medicina.find(params[:id])

    respond_to do |format|
      if @medicina.update_attributes(params[:medicina])
        format.html { redirect_to @medicina, notice: 'Medicina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medicina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicinas/1
  # DELETE /medicinas/1.json
  def destroy
    @medicina = Medicina.find(params[:id])
    @medicina.destroy

    respond_to do |format|
      format.html { redirect_to medicinas_url }
      format.json { head :no_content }
    end
  end
end
