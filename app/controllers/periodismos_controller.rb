class PeriodismosController < ApplicationController
  # GET /periodismos
  # GET /periodismos.json
  def index
    @periodismos = Periodismo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @periodismos }
    end
  end

  # GET /periodismos/1
  # GET /periodismos/1.json
  def show
    @periodismo = Periodismo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @periodismo }
    end
  end

  # GET /periodismos/new
  # GET /periodismos/new.json
  def new
    @periodismo = Periodismo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @periodismo }
    end
  end

  # GET /periodismos/1/edit
  def edit
    @periodismo = Periodismo.find(params[:id])
  end

  # POST /periodismos
  # POST /periodismos.json
  def create
    @periodismo = Periodismo.new(params[:periodismo])

    respond_to do |format|
      if @periodismo.save
        format.html { redirect_to @periodismo, notice: 'Periodismo was successfully created.' }
        format.json { render json: @periodismo, status: :created, location: @periodismo }
      else
        format.html { render action: "new" }
        format.json { render json: @periodismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /periodismos/1
  # PUT /periodismos/1.json
  def update
    @periodismo = Periodismo.find(params[:id])

    respond_to do |format|
      if @periodismo.update_attributes(params[:periodismo])
        format.html { redirect_to @periodismo, notice: 'Periodismo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @periodismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodismos/1
  # DELETE /periodismos/1.json
  def destroy
    @periodismo = Periodismo.find(params[:id])
    @periodismo.destroy

    respond_to do |format|
      format.html { redirect_to periodismos_url }
      format.json { head :no_content }
    end
  end
end
