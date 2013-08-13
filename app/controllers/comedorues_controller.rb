class ComedoruesController < ApplicationController
  # GET /comedorues
  # GET /comedorues.json
  def index
    @comedorues = Comedorue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comedorues }
    end
  end

  # GET /comedorues/1
  # GET /comedorues/1.json
  def show
    @comedorue = Comedorue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comedorue }
    end
  end

  # GET /comedorues/new
  # GET /comedorues/new.json
  def new
    @comedorue = Comedorue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comedorue }
    end
  end

  # GET /comedorues/1/edit
  def edit
    @comedorue = Comedorue.find(params[:id])
  end

  # POST /comedorues
  # POST /comedorues.json
  def create
    @comedorue = Comedorue.new(params[:comedorue])

    respond_to do |format|
      if @comedorue.save
        format.html { redirect_to @comedorue, notice: 'Comedorue was successfully created.' }
        format.json { render json: @comedorue, status: :created, location: @comedorue }
      else
        format.html { render action: "new" }
        format.json { render json: @comedorue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comedorues/1
  # PUT /comedorues/1.json
  def update
    @comedorue = Comedorue.find(params[:id])

    respond_to do |format|
      if @comedorue.update_attributes(params[:comedorue])
        format.html { redirect_to @comedorue, notice: 'Comedorue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comedorue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comedorues/1
  # DELETE /comedorues/1.json
  def destroy
    @comedorue = Comedorue.find(params[:id])
    @comedorue.destroy

    respond_to do |format|
      format.html { redirect_to comedorues_url }
      format.json { head :no_content }
    end
  end
end
