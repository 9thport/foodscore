class FoodlogEntriesController < ApplicationController
  # GET /foodlog_entries
  # GET /foodlog_entries.json
  def index
    @foodlog_entries = FoodlogEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @foodlog_entries }
    end
  end

  # GET /foodlog_entries/1
  # GET /foodlog_entries/1.json
  def show
    @foodlog_entry = FoodlogEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @foodlog_entry }
    end
  end

  # GET /foodlog_entries/new
  # GET /foodlog_entries/new.json
  def new
    @foodlog_entry = FoodlogEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @foodlog_entry }
    end
  end

  # GET /foodlog_entries/1/edit
  def edit
    @foodlog_entry = FoodlogEntry.find(params[:id])
  end

  # POST /foodlog_entries
  # POST /foodlog_entries.json
  def create
    @foodlog_entry = FoodlogEntry.new(params[:foodlog_entry])

    respond_to do |format|
      if @foodlog_entry.save
        format.html { redirect_to @foodlog_entry, :notice => 'Foodlog entry was successfully created.' }
        format.json { render :json => @foodlog_entry, :status => :created, :location => @foodlog_entry }
      else
        format.html { render :action => "new" }
        format.json { render :json => @foodlog_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foodlog_entries/1
  # PUT /foodlog_entries/1.json
  def update
    @foodlog_entry = FoodlogEntry.find(params[:id])

    respond_to do |format|
      if @foodlog_entry.update_attributes(params[:foodlog_entry])
        format.html { redirect_to @foodlog_entry, :notice => 'Foodlog entry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @foodlog_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foodlog_entries/1
  # DELETE /foodlog_entries/1.json
  def destroy
    @foodlog_entry = FoodlogEntry.find(params[:id])
    @foodlog_entry.destroy

    respond_to do |format|
      format.html { redirect_to foodlog_entries_url }
      format.json { head :ok }
    end
  end
end
