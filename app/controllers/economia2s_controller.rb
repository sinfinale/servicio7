class Economia2sController < ApplicationController
  # GET /economia2s
  # GET /economia2s.json
  def index
    @economia2s = Economia2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia2s }
    end
  end

  # GET /economia2s/1
  # GET /economia2s/1.json
  def show
    @economia2 = Economia2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia2 }
    end
  end

  # GET /economia2s/new
  # GET /economia2s/new.json
  def new
    @economia2 = Economia2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia2 }
    end
  end

  # GET /economia2s/1/edit
  def edit
    @economia2 = Economia2.find(params[:id])
  end

  # POST /economia2s
  # POST /economia2s.json
  def create
    @economia2 = Economia2.new(params[:economia2])

    respond_to do |format|
      if @economia2.save
        format.html { redirect_to @economia2, notice: 'Economia2 was successfully created.' }
        format.json { render json: @economia2, status: :created, location: @economia2 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia2s/1
  # PUT /economia2s/1.json
  def update
    @economia2 = Economia2.find(params[:id])

    respond_to do |format|
      if @economia2.update_attributes(params[:economia2])
        format.html { redirect_to @economia2, notice: 'Economia2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia2s/1
  # DELETE /economia2s/1.json
  def destroy
    @economia2 = Economia2.find(params[:id])
    @economia2.destroy

    respond_to do |format|
      format.html { redirect_to economia2s_url }
      format.json { head :no_content }
    end
  end
end
