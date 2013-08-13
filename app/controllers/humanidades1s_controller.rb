class Humanidades1sController < ApplicationController
  # GET /humanidades1s
  # GET /humanidades1s.json
  def index
    @humanidades1s = Humanidades1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @humanidades1s }
    end
  end

  # GET /humanidades1s/1
  # GET /humanidades1s/1.json
  def show
    @humanidades1 = Humanidades1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @humanidades1 }
    end
  end

  # GET /humanidades1s/new
  # GET /humanidades1s/new.json
  def new
    @humanidades1 = Humanidades1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @humanidades1 }
    end
  end

  # GET /humanidades1s/1/edit
  def edit
    @humanidades1 = Humanidades1.find(params[:id])
  end

  # POST /humanidades1s
  # POST /humanidades1s.json
  def create
    @humanidades1 = Humanidades1.new(params[:humanidades1])

    respond_to do |format|
      if @humanidades1.save
        format.html { redirect_to @humanidades1, notice: 'Humanidades1 was successfully created.' }
        format.json { render json: @humanidades1, status: :created, location: @humanidades1 }
      else
        format.html { render action: "new" }
        format.json { render json: @humanidades1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /humanidades1s/1
  # PUT /humanidades1s/1.json
  def update
    @humanidades1 = Humanidades1.find(params[:id])

    respond_to do |format|
      if @humanidades1.update_attributes(params[:humanidades1])
        format.html { redirect_to @humanidades1, notice: 'Humanidades1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @humanidades1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humanidades1s/1
  # DELETE /humanidades1s/1.json
  def destroy
    @humanidades1 = Humanidades1.find(params[:id])
    @humanidades1.destroy

    respond_to do |format|
      format.html { redirect_to humanidades1s_url }
      format.json { head :no_content }
    end
  end
end
