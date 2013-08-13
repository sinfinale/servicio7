class Economia5sController < ApplicationController
  # GET /economia5s
  # GET /economia5s.json
  def index
    @economia5s = Economia5.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia5s }
    end
  end

  # GET /economia5s/1
  # GET /economia5s/1.json
  def show
    @economia5 = Economia5.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia5 }
    end
  end

  # GET /economia5s/new
  # GET /economia5s/new.json
  def new
    @economia5 = Economia5.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia5 }
    end
  end

  # GET /economia5s/1/edit
  def edit
    @economia5 = Economia5.find(params[:id])
  end

  # POST /economia5s
  # POST /economia5s.json
  def create
    @economia5 = Economia5.new(params[:economia5])

    respond_to do |format|
      if @economia5.save
        format.html { redirect_to @economia5, notice: 'Economia5 was successfully created.' }
        format.json { render json: @economia5, status: :created, location: @economia5 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia5s/1
  # PUT /economia5s/1.json
  def update
    @economia5 = Economia5.find(params[:id])

    respond_to do |format|
      if @economia5.update_attributes(params[:economia5])
        format.html { redirect_to @economia5, notice: 'Economia5 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia5s/1
  # DELETE /economia5s/1.json
  def destroy
    @economia5 = Economia5.find(params[:id])
    @economia5.destroy

    respond_to do |format|
      format.html { redirect_to economia5s_url }
      format.json { head :no_content }
    end
  end
end
