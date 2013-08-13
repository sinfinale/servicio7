class Economia4sController < ApplicationController
  # GET /economia4s
  # GET /economia4s.json
  def index
    @economia4s = Economia4.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economia4s }
    end
  end

  # GET /economia4s/1
  # GET /economia4s/1.json
  def show
    @economia4 = Economia4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economia4 }
    end
  end

  # GET /economia4s/new
  # GET /economia4s/new.json
  def new
    @economia4 = Economia4.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economia4 }
    end
  end

  # GET /economia4s/1/edit
  def edit
    @economia4 = Economia4.find(params[:id])
  end

  # POST /economia4s
  # POST /economia4s.json
  def create
    @economia4 = Economia4.new(params[:economia4])

    respond_to do |format|
      if @economia4.save
        format.html { redirect_to @economia4, notice: 'Economia4 was successfully created.' }
        format.json { render json: @economia4, status: :created, location: @economia4 }
      else
        format.html { render action: "new" }
        format.json { render json: @economia4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economia4s/1
  # PUT /economia4s/1.json
  def update
    @economia4 = Economia4.find(params[:id])

    respond_to do |format|
      if @economia4.update_attributes(params[:economia4])
        format.html { redirect_to @economia4, notice: 'Economia4 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @economia4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economia4s/1
  # DELETE /economia4s/1.json
  def destroy
    @economia4 = Economia4.find(params[:id])
    @economia4.destroy

    respond_to do |format|
      format.html { redirect_to economia4s_url }
      format.json { head :no_content }
    end
  end
end
