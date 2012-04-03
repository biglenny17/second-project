class DevotionsController < ApplicationController
  # GET /devotions
  # GET /devotions.json
  def index
    @devotions = Devotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devotions }
    end
  end

  # GET /devotions/1
  # GET /devotions/1.json
  def show
    @devotion = Devotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @devotion }
    end
  end

  # GET /devotions/new
  # GET /devotions/new.json
  def new
    @devotion = Devotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @devotion }
    end
  end

  # GET /devotions/1/edit
  def edit
    @devotion = Devotion.find(params[:id])
  end

  # POST /devotions
  # POST /devotions.json
  def create
    @devotion = Devotion.new(params[:devotion])

    respond_to do |format|
      if @devotion.save
        format.html { redirect_to @devotion, notice: 'Devotion was successfully created.' }
        format.json { render json: @devotion, status: :created, location: @devotion }
      else
        format.html { render action: "new" }
        format.json { render json: @devotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devotions/1
  # PUT /devotions/1.json
  def update
    @devotion = Devotion.find(params[:id])

    respond_to do |format|
      if @devotion.update_attributes(params[:devotion])
        format.html { redirect_to @devotion, notice: 'Devotion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @devotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devotions/1
  # DELETE /devotions/1.json
  def destroy
    @devotion = Devotion.find(params[:id])
    @devotion.destroy

    respond_to do |format|
      format.html { redirect_to devotions_url }
      format.json { head :ok }
    end
  end
end
