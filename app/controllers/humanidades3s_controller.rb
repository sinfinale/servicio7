class Humanidades3sController < ApplicationController
  # GET /humanidades3s
  # GET /humanidades3s.json
  def index
    @humanidades3s = Humanidades3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @humanidades3s }
    end
  end

  # GET /humanidades3s/1
  # GET /humanidades3s/1.json
  def show
    @humanidades3 = Humanidades3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @humanidades3 }
    end
  end

  # GET /humanidades3s/new
  # GET /humanidades3s/new.json
  def new
    @humanidades3 = Humanidades3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @humanidades3 }
    end
  end

  # GET /humanidades3s/1/edit
  def edit
    @humanidades3 = Humanidades3.find(params[:id])
  end

  # POST /humanidades3s
  # POST /humanidades3s.json
  def create
    @humanidades3 = Humanidades3.new(params[:humanidades3])

    respond_to do |format|
      if @humanidades3.save
        format.html { redirect_to @humanidades3, notice: 'Humanidades3 was successfully created.' }
        format.json { render json: @humanidades3, status: :created, location: @humanidades3 }
      else
        format.html { render action: "new" }
        format.json { render json: @humanidades3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /humanidades3s/1
  # PUT /humanidades3s/1.json
  def update
    @humanidades3 = Humanidades3.find(params[:id])

    respond_to do |format|
      if @humanidades3.update_attributes(params[:humanidades3])
        format.html { redirect_to @humanidades3, notice: 'Humanidades3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @humanidades3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humanidades3s/1
  # DELETE /humanidades3s/1.json
  def destroy
    @humanidades3 = Humanidades3.find(params[:id])
    @humanidades3.destroy

    respond_to do |format|
      format.html { redirect_to humanidades3s_url }
      format.json { head :no_content }
    end
  end
end
