class Odontologia1sController < ApplicationController
  # GET /odontologia1s
  # GET /odontologia1s.json
  def index
    @odontologia1s = Odontologia1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odontologia1s }
    end
  end

  # GET /odontologia1s/1
  # GET /odontologia1s/1.json
  def show
    @odontologia1 = Odontologia1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odontologia1 }
    end
  end

  # GET /odontologia1s/new
  # GET /odontologia1s/new.json
  def new
    @odontologia1 = Odontologia1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odontologia1 }
    end
  end

  # GET /odontologia1s/1/edit
  def edit
    @odontologia1 = Odontologia1.find(params[:id])
  end

  # POST /odontologia1s
  # POST /odontologia1s.json
  def create
    @odontologia1 = Odontologia1.new(params[:odontologia1])

    respond_to do |format|
      if @odontologia1.save
        format.html { redirect_to @odontologia1, notice: 'Odontologia1 was successfully created.' }
        format.json { render json: @odontologia1, status: :created, location: @odontologia1 }
      else
        format.html { render action: "new" }
        format.json { render json: @odontologia1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odontologia1s/1
  # PUT /odontologia1s/1.json
  def update
    @odontologia1 = Odontologia1.find(params[:id])

    respond_to do |format|
      if @odontologia1.update_attributes(params[:odontologia1])
        format.html { redirect_to @odontologia1, notice: 'Odontologia1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odontologia1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odontologia1s/1
  # DELETE /odontologia1s/1.json
  def destroy
    @odontologia1 = Odontologia1.find(params[:id])
    @odontologia1.destroy

    respond_to do |format|
      format.html { redirect_to odontologia1s_url }
      format.json { head :no_content }
    end
  end
end
