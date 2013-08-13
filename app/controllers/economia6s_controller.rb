class Economia6sController < ApplicationController
  # GET /economia6s
  # GET /economia6s.json
  def index
    @economia6s = Economia6.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia6s }
    end
  end

  # GET /economia6s/1
  # GET /economia6s/1.json
  def show
    @economia6 = Economia6.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia6 }
    end
  end

  # GET /economia6s/new
  # GET /economia6s/new.json
  def new
    @economia6 = Economia6.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia6 }
    end
  end

  # GET /economia6s/1/edit
  def edit
    @economia6 = Economia6.find(params[:id])
  end

  # POST /economia6s
  # POST /economia6s.json
  def create
    @economia6 = Economia6.new(params[:economia6])

    respond_to do |format|
      if @economia6.save
        format.html { redirect_to @economia6, notice: 'Economia6 was successfully created.' }
        format.json { render json: @economia6, status: :created, location: @economia6 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia6s/1
  # PUT /economia6s/1.json
  def update
    @economia6 = Economia6.find(params[:id])

    respond_to do |format|
      if @economia6.update_attributes(params[:economia6])
        format.html { redirect_to @economia6, notice: 'Economia6 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia6s/1
  # DELETE /economia6s/1.json
  def destroy
    @economia6 = Economia6.find(params[:id])
    @economia6.destroy

    respond_to do |format|
      format.html { redirect_to economia6s_url }
      format.json { head :no_content }
    end
  end
end
