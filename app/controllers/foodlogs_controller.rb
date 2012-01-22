class FoodlogsController < ApplicationController
  # GET /foodlogs
  # GET /foodlogs.json
  def index
    @foodlogs = Foodlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @foodlogs }
    end
  end

  # GET /foodlogs/1
  # GET /foodlogs/1.json
  def show
    @foodlog = Foodlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @foodlog }
    end
  end

  # GET /foodlogs/new
  # GET /foodlogs/new.json
  def new
    @foodlog = Foodlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @foodlog }
    end
  end

  # GET /foodlogs/1/edit
  def edit
    @foodlog = Foodlog.find(params[:id])
  end

  # POST /foodlogs
  # POST /foodlogs.json
  def create
    @foodlog = Foodlog.new(params[:foodlog])

    respond_to do |format|
      if @foodlog.save
        format.html { redirect_to @foodlog, :notice => 'Foodlog was successfully created.' }
        format.json { render :json => @foodlog, :status => :created, :location => @foodlog }
      else
        format.html { render :action => "new" }
        format.json { render :json => @foodlog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foodlogs/1
  # PUT /foodlogs/1.json
  def update
    @foodlog = Foodlog.find(params[:id])

    respond_to do |format|
      if @foodlog.update_attributes(params[:foodlog])
        format.html { redirect_to @foodlog, :notice => 'Foodlog was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @foodlog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foodlogs/1
  # DELETE /foodlogs/1.json
  def destroy
    @foodlog = Foodlog.find(params[:id])
    @foodlog.destroy

    respond_to do |format|
      format.html { redirect_to foodlogs_url }
      format.json { head :ok }
    end
  end
end
