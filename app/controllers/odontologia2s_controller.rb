class Odontologia2sController < ApplicationController
  # GET /odontologia2s
  # GET /odontologia2s.json
  def index
    @odontologia2s = Odontologia2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odontologia2s }
    end
  end

  # GET /odontologia2s/1
  # GET /odontologia2s/1.json
  def show
    @odontologia2 = Odontologia2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odontologia2 }
    end
  end

  # GET /odontologia2s/new
  # GET /odontologia2s/new.json
  def new
    @odontologia2 = Odontologia2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odontologia2 }
    end
  end

  # GET /odontologia2s/1/edit
  def edit
    @odontologia2 = Odontologia2.find(params[:id])
  end

  # POST /odontologia2s
  # POST /odontologia2s.json
  def create
    @odontologia2 = Odontologia2.new(params[:odontologia2])

    respond_to do |format|
      if @odontologia2.save
        format.html { redirect_to @odontologia2, notice: 'Odontologia2 was successfully created.' }
        format.json { render json: @odontologia2, status: :created, location: @odontologia2 }
      else
        format.html { render action: "new" }
        format.json { render json: @odontologia2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odontologia2s/1
  # PUT /odontologia2s/1.json
  def update
    @odontologia2 = Odontologia2.find(params[:id])

    respond_to do |format|
      if @odontologia2.update_attributes(params[:odontologia2])
        format.html { redirect_to @odontologia2, notice: 'Odontologia2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odontologia2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odontologia2s/1
  # DELETE /odontologia2s/1.json
  def destroy
    @odontologia2 = Odontologia2.find(params[:id])
    @odontologia2.destroy

    respond_to do |format|
      format.html { redirect_to odontologia2s_url }
      format.json { head :no_content }
    end
  end
end
