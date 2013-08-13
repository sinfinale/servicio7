class Economia3sController < ApplicationController
  # GET /economia3s
  # GET /economia3s.json
  def index
    @economia3s = Economia3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia3s }
    end
  end

  # GET /economia3s/1
  # GET /economia3s/1.json
  def show
    @economia3 = Economia3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia3 }
    end
  end

  # GET /economia3s/new
  # GET /economia3s/new.json
  def new
    @economia3 = Economia3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia3 }
    end
  end

  # GET /economia3s/1/edit
  def edit
    @economia3 = Economia3.find(params[:id])
  end

  # POST /economia3s
  # POST /economia3s.json
  def create
    @economia3 = Economia3.new(params[:economia3])

    respond_to do |format|
      if @economia3.save
        format.html { redirect_to @economia3, notice: 'Economia3 was successfully created.' }
        format.json { render json: @economia3, status: :created, location: @economia3 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia3s/1
  # PUT /economia3s/1.json
  def update
    @economia3 = Economia3.find(params[:id])

    respond_to do |format|
      if @economia3.update_attributes(params[:economia3])
        format.html { redirect_to @economia3, notice: 'Economia3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia3s/1
  # DELETE /economia3s/1.json
  def destroy
    @economia3 = Economia3.find(params[:id])
    @economia3.destroy

    respond_to do |format|
      format.html { redirect_to economia3s_url }
      format.json { head :no_content }
    end
  end
end
