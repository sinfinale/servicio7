class Humanidades2sController < ApplicationController
  # GET /humanidades2s
  # GET /humanidades2s.json
  def index
    @humanidades2s = Humanidades2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @humanidades2s }
    end
  end

  # GET /humanidades2s/1
  # GET /humanidades2s/1.json
  def show
    @humanidades2 = Humanidades2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @humanidades2 }
    end
  end

  # GET /humanidades2s/new
  # GET /humanidades2s/new.json
  def new
    @humanidades2 = Humanidades2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @humanidades2 }
    end
  end

  # GET /humanidades2s/1/edit
  def edit
    @humanidades2 = Humanidades2.find(params[:id])
  end

  # POST /humanidades2s
  # POST /humanidades2s.json
  def create
    @humanidades2 = Humanidades2.new(params[:humanidades2])

    respond_to do |format|
      if @humanidades2.save
        format.html { redirect_to @humanidades2, notice: 'Humanidades2 was successfully created.' }
        format.json { render json: @humanidades2, status: :created, location: @humanidades2 }
      else
        format.html { render action: "new" }
        format.json { render json: @humanidades2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /humanidades2s/1
  # PUT /humanidades2s/1.json
  def update
    @humanidades2 = Humanidades2.find(params[:id])

    respond_to do |format|
      if @humanidades2.update_attributes(params[:humanidades2])
        format.html { redirect_to @humanidades2, notice: 'Humanidades2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @humanidades2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humanidades2s/1
  # DELETE /humanidades2s/1.json
  def destroy
    @humanidades2 = Humanidades2.find(params[:id])
    @humanidades2.destroy

    respond_to do |format|
      format.html { redirect_to humanidades2s_url }
      format.json { head :no_content }
    end
  end
end
