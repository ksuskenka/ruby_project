class SotrudnikisController < ApplicationController
  # GET /sotrudnikis
  # GET /sotrudnikis.json
  def index
    @sotrudnikis = Sotrudniki.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sotrudnikis }
    end
  end

  # GET /sotrudnikis/1
  # GET /sotrudnikis/1.json
  def show
    @sotrudniki = Sotrudniki.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sotrudniki }
    end
  end

  # GET /sotrudnikis/new
  # GET /sotrudnikis/new.json
  def new
    @sotrudniki = Sotrudniki.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sotrudniki }
    end
  end

  # GET /sotrudnikis/1/edit
  def edit
    @sotrudniki = Sotrudniki.find(params[:id])
  end

  # POST /sotrudnikis
  # POST /sotrudnikis.json
  def create
    @sotrudniki = Sotrudniki.new(params[:sotrudniki])

    respond_to do |format|
      if @sotrudniki.save
        format.html { redirect_to @sotrudniki, notice: 'Sotrudniki was successfully created.' }
        format.json { render json: @sotrudniki, status: :created, location: @sotrudniki }
      else
        format.html { render action: "new" }
        format.json { render json: @sotrudniki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sotrudnikis/1
  # PUT /sotrudnikis/1.json
  def update
    @sotrudniki = Sotrudniki.find(params[:id])

    respond_to do |format|
      if @sotrudniki.update_attributes(params[:sotrudniki])
        format.html { redirect_to @sotrudniki, notice: 'Sotrudniki was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sotrudniki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sotrudnikis/1
  # DELETE /sotrudnikis/1.json
  def destroy
    @sotrudniki = Sotrudniki.find(params[:id])
    @sotrudniki.destroy

    respond_to do |format|
      format.html { redirect_to sotrudnikis_url }
      format.json { head :no_content }
    end
  end
end
