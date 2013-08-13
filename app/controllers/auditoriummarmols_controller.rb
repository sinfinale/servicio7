class AuditoriummarmolsController < ApplicationController
  # GET /auditoriummarmols
  # GET /auditoriummarmols.json
  def index
    @auditoriummarmols = Auditoriummarmol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auditoriummarmols }
    end
  end

  # GET /auditoriummarmols/1
  # GET /auditoriummarmols/1.json
  def show
    @auditoriummarmol = Auditoriummarmol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auditoriummarmol }
    end
  end

  # GET /auditoriummarmols/new
  # GET /auditoriummarmols/new.json
  def new
    @auditoriummarmol = Auditoriummarmol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auditoriummarmol }
    end
  end

  # GET /auditoriummarmols/1/edit
  def edit
    @auditoriummarmol = Auditoriummarmol.find(params[:id])
  end

  # POST /auditoriummarmols
  # POST /auditoriummarmols.json
  def create
    @auditoriummarmol = Auditoriummarmol.new(params[:auditoriummarmol])

    respond_to do |format|
      if @auditoriummarmol.save
        format.html { redirect_to @auditoriummarmol, notice: 'Auditoriummarmol was successfully created.' }
        format.json { render json: @auditoriummarmol, status: :created, location: @auditoriummarmol }
      else
        format.html { render action: "new" }
        format.json { render json: @auditoriummarmol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auditoriummarmols/1
  # PUT /auditoriummarmols/1.json
  def update
    @auditoriummarmol = Auditoriummarmol.find(params[:id])

    respond_to do |format|
      if @auditoriummarmol.update_attributes(params[:auditoriummarmol])
        format.html { redirect_to @auditoriummarmol, notice: 'Auditoriummarmol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auditoriummarmol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditoriummarmols/1
  # DELETE /auditoriummarmols/1.json
  def destroy
    @auditoriummarmol = Auditoriummarmol.find(params[:id])
    @auditoriummarmol.destroy

    respond_to do |format|
      format.html { redirect_to auditoriummarmols_url }
      format.json { head :no_content }
    end
  end
end
