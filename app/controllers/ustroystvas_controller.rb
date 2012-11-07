class UstroystvasController < ApplicationController
  # GET /ustroystvas
  # GET /ustroystvas.json
  def index
    @ustroystvas = Ustroystva.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ustroystvas }
    end
  end

  # GET /ustroystvas/1
  # GET /ustroystvas/1.json
  def show
    @ustroystva = Ustroystva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ustroystva }
    end
  end

  # GET /ustroystvas/new
  # GET /ustroystvas/new.json
  def new
    @ustroystva = Ustroystva.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ustroystva }
    end
  end

  # GET /ustroystvas/1/edit
  def edit
    @ustroystva = Ustroystva.find(params[:id])
  end

  # POST /ustroystvas
  # POST /ustroystvas.json
  def create
    @ustroystva = Ustroystva.new(params[:ustroystva])

    respond_to do |format|
      if @ustroystva.save
        format.html { redirect_to @ustroystva, notice: 'Ustroystva was successfully created.' }
        format.json { render json: @ustroystva, status: :created, location: @ustroystva }
      else
        format.html { render action: "new" }
        format.json { render json: @ustroystva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ustroystvas/1
  # PUT /ustroystvas/1.json
  def update
    @ustroystva = Ustroystva.find(params[:id])

    respond_to do |format|
      if @ustroystva.update_attributes(params[:ustroystva])
        format.html { redirect_to @ustroystva, notice: 'Ustroystva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ustroystva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ustroystvas/1
  # DELETE /ustroystvas/1.json
  def destroy
    @ustroystva = Ustroystva.find(params[:id])
    @ustroystva.destroy

    respond_to do |format|
      format.html { redirect_to ustroystvas_url }
      format.json { head :no_content }
    end
  end
end
