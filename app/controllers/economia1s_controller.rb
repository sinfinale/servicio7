class Economia1sController < ApplicationController
  # GET /economia1s
  # GET /economia1s.json
  def index
    @economia1s = Economia1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia1s }
    end
  end

  # GET /economia1s/1
  # GET /economia1s/1.json
  def show
    @economia1 = Economia1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia1 }
    end
  end

  # GET /economia1s/new
  # GET /economia1s/new.json
  def new
    @economia1 = Economia1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia1 }
    end
  end

  # GET /economia1s/1/edit
  def edit
    @economia1 = Economia1.find(params[:id])
  end

  # POST /economia1s
  # POST /economia1s.json
  def create
    @economia1 = Economia1.new(params[:economia1])

    respond_to do |format|
      if @economia1.save
        format.html { redirect_to @economia1, notice: 'Economia1 was successfully created.' }
        format.json { render json: @economia1, status: :created, location: @economia1 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia1s/1
  # PUT /economia1s/1.json
  def update
    @economia1 = Economia1.find(params[:id])

    respond_to do |format|
      if @economia1.update_attributes(params[:economia1])
        format.html { redirect_to @economia1, notice: 'Economia1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia1s/1
  # DELETE /economia1s/1.json
  def destroy
    @economia1 = Economia1.find(params[:id])
    @economia1.destroy

    respond_to do |format|
      format.html { redirect_to economia1s_url }
      format.json { head :no_content }
    end
  end
end
