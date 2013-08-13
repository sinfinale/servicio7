class Odontologia3sController < ApplicationController
  # GET /odontologia3s
  # GET /odontologia3s.json
  def index
    @odontologia3s = Odontologia3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odontologia3s }
    end
  end

  # GET /odontologia3s/1
  # GET /odontologia3s/1.json
  def show
    @odontologia3 = Odontologia3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odontologia3 }
    end
  end

  # GET /odontologia3s/new
  # GET /odontologia3s/new.json
  def new
    @odontologia3 = Odontologia3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odontologia3 }
    end
  end

  # GET /odontologia3s/1/edit
  def edit
    @odontologia3 = Odontologia3.find(params[:id])
  end

  # POST /odontologia3s
  # POST /odontologia3s.json
  def create
    @odontologia3 = Odontologia3.new(params[:odontologia3])

    respond_to do |format|
      if @odontologia3.save
        format.html { redirect_to @odontologia3, notice: 'Odontologia3 was successfully created.' }
        format.json { render json: @odontologia3, status: :created, location: @odontologia3 }
      else
        format.html { render action: "new" }
        format.json { render json: @odontologia3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odontologia3s/1
  # PUT /odontologia3s/1.json
  def update
    @odontologia3 = Odontologia3.find(params[:id])

    respond_to do |format|
      if @odontologia3.update_attributes(params[:odontologia3])
        format.html { redirect_to @odontologia3, notice: 'Odontologia3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odontologia3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odontologia3s/1
  # DELETE /odontologia3s/1.json
  def destroy
    @odontologia3 = Odontologia3.find(params[:id])
    @odontologia3.destroy

    respond_to do |format|
      format.html { redirect_to odontologia3s_url }
      format.json { head :no_content }
    end
  end
end
